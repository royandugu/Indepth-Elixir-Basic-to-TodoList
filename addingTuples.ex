defmodule AddingTupes do
  @moduledoc "This is a module that is used to represent the addition of
  tuples"
  def add_tuple do
    [1,2,3]++[3,4,5] #The same letters are not overwritten
  end
end
IO.inspect(AddingTupes.add_tuple)
