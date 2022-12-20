defmodule SquareUsingStream do
  @moduledoc """
    This module is used to find the square of numbers
    1. Validate if it is a positive number
    2. Find the squares of each
    3. Put index on them
    4. All of the above are kept in stack and finally executed when Enum function is reached
  """
  def find_square(list) do
    Stream.filter(list,fn x-> if x>0, do: x, else: 0 end) |> Stream.map(fn x -> x*x end) |> Stream.with_index |> Enum.each(fn {values, index} -> IO.puts("#{index+1} . #{values}") end)
  end
end
SquareUsingStream.find_square([1,2,-2,3]);
