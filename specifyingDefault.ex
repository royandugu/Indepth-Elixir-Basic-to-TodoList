defmodule SumMaker do
  def get_sum(a \\ 0 , b \\ 0) do
    a+b
  end
  def display_result do
    IO.puts(get_sum(1))
  end
end
SumMaker.display_result
