defmodule SumOfElements do
  @moduledoc """
   This module contains a function that will find the sum of the elements of a list
  """
  def find_sum([]), do: 0
  def find_sum([head | tail]), do: head+find_sum(tail)
end
sum=SumOfElements.find_sum([1,2,3])
IO.puts(sum)
