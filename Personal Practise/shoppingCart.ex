#%Cart{id: 1 , item: {1=>{itemNumber: , date: , itemName: },2=>{}}
defmodule Cart do
  @moduledoc """
    This is our shopping Cart
  """
  defstruct total_items: 0, item: %{}

  #Implying the collectable protocol
  # defimpl Collectable, for: Cart do
  #   def into(cart) do
  #     {cart , &callback/2}
  #   end
  # end

  # defp callback(cart, {:contd,item_name,date}) do
  #   Cart.add_item(cart,item_name,date)
  # end

  # defp callback(cart, :hlt), do: :ok

  # def callback(cart, :done), do: cart



  #Create a cart
  def new, do: %Cart{}

  #Create a cart with multiple iterations <<other ways pani xa>>
  def new(entries) do
    Enum.reduce(entries,%Cart{},fn x,i -> add_item(i,x.itemName,x.date) end)
  end

  #Insert into cart
  def add_item(%Cart{}=cart, item_name, date) do
    to_be_added=%{item_number: cart.total_items+1, date: date, item_name: item_name}
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
  def delete_item(%Cart{}=cart,item_number) do
    case Map.fetch(cart.item,item_number) do
      :error -> IO.puts("There is no item matching with the provided item number")
      {:ok , match} ->
        left_outs=Map.delete(cart.item,item_number)
        %Cart{cart | total_items: cart.total_items-1 , item: left_outs}
    end
  end

  #delete item on the basis of date
  def delete_item_date(%Cart{}=cart,date) do
    one_half=Enum.map(cart.item,fn x-> check_exists(x,date) end)
    match_value=Enum.filter(one_half, fn x -> x !== :unmatch end)
    case Enum.fetch(match_value,0) do
      {:ok , []} -> IO.puts("Internal server error")
      {:ok , %{}=match}->
        left_outs=Map.filter(cart.item,fn x -> x !== match end)
        %Cart{cart | total_items: cart.total_items-1 , item: left_outs}
    end
  end


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
cart1=Cart.delete_item(cart1,1)
Cart.display(cart1)
cart1=Cart.delete_item_date(cart1,345)
Cart.display(cart1)


cart2=Cart.new([%{date: 123 , itemNumber: 1, itemName: "Pizza"}, %{date: 555 , itemNumber: 2 , itemName: "Burger"}])
Cart.display(cart2)

# entries=[
#   {"eggs",123},
#   {"fish",456}
# ]
# for entry<-entries, into: Cart.new, do: entry
#Like the above we can enter in collectables
#Question 1: Map ko key mah number kasari ? Map.put function le key linxa tesma number (cart.id +1 )
