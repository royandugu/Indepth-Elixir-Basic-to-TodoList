defmodule AliasCreator do
  alias IO, as: InputOutput
  def displayer do
    InputOutput.puts("Hello world")
  end
end
defmodule AliasCreator.Check do
  def displayer do
    IO.puts("Hello world")
  end
end
defmodule Test do
  alias AliasCreator.Check
  def displayer do
    Check.displayer()
  end
end
AliasCreator.displayer()
