defmodule UsingGuardsInLamdas do
  @moduledoc """
  This module implements the usage of guards in lamda functions
  """
  def check_lamda do
    test_num =
      fn x when x < 0 -> :negative
      0 -> :zero
      x when x > 0 -> :positive end
    IO.puts(test_num.(-1));
  end
end
UsingGuardsInLamdas.check_lamda()
