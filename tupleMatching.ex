defmodule TupleMatching do
  @moduledoc "
    This module checks if the tuples that we want matches
  "
  def check_match do
    person={:person, "Bob",15}
    {:person,name,age}=person
    IO.puts(name)
    IO.puts(age)
  end
end
TupleMatching.check_match()
