#%Cart{id: 1 , item: {1=>{itemNumber: , date: , itemName: },2=>{}}
defmodule Cart do
  @moduledoc """
    This is our shopping Cart
  """
  defstruct total_items: 0, item: %{}

  #Create a cart
  def new, do: %Cart{}

  #Insert into cart
  def add_item(%Cart{}=cart, itemName, date) do
    to_be_added=%{itemNumber: cart.total_items+1, date: date, itemName: itemName}
    new_map=Map.put(cart.item, cart.total_items+1, to_be_added)
    %Cart{cart | total_items: cart.total_items+1, item: new_map}
  end
  #Read a cart
  def display(cart) do
    IO.inspect(cart)
  end

  #Read a specific item in the cart on the basis of item number
  def display_item(%Cart{}=cart,item_number) do
    case Map.fetch(cart.item,item_number) do
      :error -> IO.puts("Item with the given item_number does not exist")
      {:ok , match}->
        IO.inspect(match)
    end
  end

  def check_exists(item,date_passed) do
    item_map=elem(item,1)
    if (item_map.date === date_passed) do
      item_map
    else
      :unmatch
    end
  end

  #Read a specific item in the cart on the basis of date
  def display_item_date(%Cart{}=cart,date) do
    one_half=Enum.map(cart.item,fn x-> check_exists(x,date) end)
    match_value=Enum.filter(one_half, fn x -> x !== :unmatch end)
    IO.inspect(match_value)

    if(match_value === []) do
      IO.puts("You didn't add any item to the cart at this day")
    else
      IO.inspect(match_value)
    end

  end

  #Update a specific item in the on the basis of item number
  def update_item(%Cart{}=cart,item_number,new_item_name) do
    case Map.fetch(cart.item,item_number) do
      :error -> cart
      {:ok, match} ->
        value=Map.put(match, :itemName,new_item_name)
        item_map=%{cart.item | item_number => value}
        %Cart{cart | item: item_map}
    end
  end

  #update a specific item in the basis of date
  def update_item_date(%Cart{}=cart,date,item_name) do
    one_half=Enum.map(cart.item,fn x-> check_exists(x,date) end)
    match_value=Enum.filter(one_half, fn x -> x !== :unmatch end)
    case Enum.fetch(match_value,0) do
      {:ok , []} -> IO.puts("Match failed")
      {:ok , %{}=match} ->
        new_value=Map.put(match,:itemName,item_name)
        collection=%{cart.item | match.itemNumber => new_value} #this is why itemNumber is also there in the map
        %Cart{cart | total_items: cart.total_items , item: collection}
    end
  end

  #delete item on the basis of item_number
  #delete item on the basis of date

end
cart1=Cart.new()


cart1=Cart.add_item(cart1,"Eggs", 123)
cart1=Cart.add_item(cart1,"aFish", 345)
Cart.display(cart1)
Cart.display_item(cart1,1)
Cart.display_item_date(cart1,345)
cart1=Cart.update_item(cart1,1,"Sausage")
Cart.display(cart1)
cart1=Cart.update_item_date(cart1,345,"Burger")
Cart.display(cart1)
#Question 1: Map ko key mah number kasari ? Map.put function le key linxa tesma number (cart.id +1 )
