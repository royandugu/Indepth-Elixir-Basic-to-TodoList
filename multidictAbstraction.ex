#Actual function
defmodule ShoppingCart do
  @moduledoc """
    This is a module that will implement shopping cart using a map
  """
  def new, do: %{}
  def add_item(cart,itemNo,itemName) do
    Map.update(cart, itemNo, [itemName], fn [items] -> [itemName | items] end)
  end
  def view_cart(cart) do
    IO.inspect(cart)
  end
  def view_items(cart,itemNo) do
    #The third argument is the default value that is returned if the key doesnot exist in the map
    Map.get(cart,itemNo,[])
  end
end


#abstraction function
defmodule MultiDict do
  @moduledoc "
    Abstraction over abstraction
    Main goal?
    First it seems just a waste of things but here we want to implement a module
    that can only create and add entries and work only on them therefore, garna milyo
    "
  def new, do: ShoppingCart.new
  def add_entries(cart,itemNo,itemName) do
    ShoppingCart.add_item(cart,itemNo,itemName)
  end
end

cart=MultiDict.new
cart=MultiDict.add_entries(cart,1,"Butter")
cart=MultiDict.add_entries(cart,1,"Fish")
cart=MultiDict.add_entries(cart,2,"Vanilla")
ShoppingCart.view_cart(cart)
IO.inspect(ShoppingCart.view_items(cart,1))
