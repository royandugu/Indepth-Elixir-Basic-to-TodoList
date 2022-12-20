defmodule LoopTest do
  def display_natural_set(0), do: :finished
  def display_natural_set(n) do
    IO.puts(n);
    display_natural_set(n-1)
  end
end
#LoopTest.display_natural_set(5);

defmodule LoopTest2 do
  @moduledoc """
   This module implies the loop concept to display first n natural numbers using guards
  """
  def display_natural_set(n) when n<=0, do: :invalid
  def dispaly_natural_set(0), do: :null
  def display_natural_set(n) do
    IO.puts(n)
    display_natural_set(n-1)
  end
end
IO.puts(LoopTest2.display_natural_set(-5))
