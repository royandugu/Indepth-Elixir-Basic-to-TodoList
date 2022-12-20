defmodule Factorial do
  @moduledoc """
    This module implements the use of factorial
  """
  def find_factorial(number) when number==0, do: 1
  def find_factorial(number), do: number*find_factorial(number-1)
end
IO.puts(Factorial.find_factorial(3))
