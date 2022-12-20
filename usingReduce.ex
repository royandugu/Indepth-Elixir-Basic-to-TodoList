defmodule ReduceTester do
  @moduledoc "This module is used to understand how Enum.Reduce works"
  def use_reduce(enumerable) do
    IO.puts(Enum.reduce(enumerable,0,fn element, x-> x+element end))
  end
end
ReduceTester.use_reduce([1,2,3])

defmodule Concatinator do
  @moduledoc """
    This module right here is used to concatinate statements
  """
  def concat_things(enumerable) do
    IO.puts(Enum.reduce(enumerable," ",fn element,x->x <> element end))
  end
end
Concatinator.concat_things(["I", "Love", "Games"])
