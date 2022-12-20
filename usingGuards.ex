defmodule GuardsDemo do
  @moduledoc """
    This module implements the usage of guards
  """
  def check_sign(number) when number>0 do
    :positive
  end
  def check_sign(0), do: :zero
  def check_sign(number) when number<0 do
    :negative
  end
 end

 IO.inspect(GuardsDemo.check_sign(-1))
