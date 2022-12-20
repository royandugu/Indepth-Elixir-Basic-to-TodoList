defmodule Enumeration do
  @moduledoc "This module implements all the enumeration functions"
  def use_map(list,n) do
    newList=Enum.map(list,fn x-> n*x end)
    IO.inspect(newList)
  end
  def use_map_dense(list,n) do
    newList=Enum.map(list,&(2*&1))
    IO.inspect(newList)
  end
  def use_filter(list,n) do
    newList=Enum.filter(list, fn x-> rem(x,n)===0 end)
    IO.inspect(newList);
  end
end
Enumeration.use_map([1,2,3],2)
Enumeration.use_map_dense([4,5,6],5)
Enumeration.use_filter([1,2,3],2);
