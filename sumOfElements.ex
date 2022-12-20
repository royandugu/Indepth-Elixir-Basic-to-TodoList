defmodule SumCalculator do
  def calculate_sum([]), do: 0
  def calculate_sum([head | tail]) do
    head+calculate_sum(tail)
  end
end
IO.puts(SumCalculator.calculate_sum([1,2,3]))
