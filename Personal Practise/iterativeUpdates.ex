defmodule ShoppingCart do
  defstruct number_of_items: 0 , items: %{}

  def new(list, number_of_items) do
      Enum.reduce(list,%ShoppingCart{},fn x -> add_entry(x) end) #add_entry is our previous addition function check personalPractise shoppingCart.ex
  end

  def display(%ShoppingCart{}=cart) do
    IO.inspect(cart)
  end

end
cart1=ShoppingCart.new([%{date: 123, item_number: 456},%{date: 98, item_number: 35}],2)
ShoppingCart.display(cart1)
