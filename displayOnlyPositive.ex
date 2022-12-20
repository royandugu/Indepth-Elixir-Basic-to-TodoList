defmodule PositiveDisplayer do
  @moduledoc """
   This is a module that implements the displaying of only positive
   numbers from the list entered by the user
  """
  def get_positive([]), do: :finished
  def get_positive([head | tail]) do
    if head>=0, do: IO.puts(head)
    get_positive(tail)
  end
end
PositiveDisplayer.get_positive([-1,1,2,9,-2,-3])
