defmodule LengthCalculator do
  @moduledoc "This module is used to calculate the length of a list"
  def calculate_length(length,[]) do
    length
  end
  def calculate_length(length,[head | tail]) do
    calculate_length(length+1,tail)
  end
end
length=LengthCalculator.calculate_length(0,[1,2,3])
IO.puts(length)
