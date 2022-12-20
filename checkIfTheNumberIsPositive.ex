defmodule SignChecker do
  @moduledoc """
    This module checks if the number is positive negative or zero
  """
  def check_sign(number) do
    if number>0 do
      IO.puts("Positive")
    else
      IO.puts("Negative")
    end

  end
end
SignChecker.check_sign(-1)
