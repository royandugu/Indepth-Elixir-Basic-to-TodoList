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
cart=ShoppingCart.new() #created a new shopping cart
cart=ShoppingCart.add_item(cart,1,"Butter")
cart=ShoppingCart.add_item(cart,1,"Fish")
cart=ShoppingCart.add_item(cart,2,"Vanilla")
ShoppingCart.view_cart(cart)
IO.inspect(ShoppingCart.view_items(cart,1))
