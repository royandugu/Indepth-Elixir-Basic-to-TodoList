defmodule RangeDisplayer do
  @moduledoc """
    This module defines a function that takes two numbers and displays the range of numbers between them
  """
  def see_range(num1, num2) when num1===num2, do: IO.puts(num1)
  def see_range(num1, num2) do
    IO.puts(num1)
    see_range(num1+1,num2)
  end
end
RangeDisplayer.see_range(1,10)
