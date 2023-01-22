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

  #Read a specific item in the cart on the basis of date
  def display_item(%Cart{}=cart,%Date{}=date) do
    IO.puts("You send date")
  end

end
cart1=Cart.new()

cart1=Cart.add_item(cart1,"Eggs", ~Date[2023-01-01])
cart1=Cart.add_item(cart1,"Fish", ~Date[2020-2-3])
Cart.display(cart1)
Cart.display_item(cart1,1)
#Question 1: Map ko key mah number kasari ? Map.put function le key linxa tesma number (cart.id +1 )
