defmodule PatternMatching do
  @moduledoc """
    This module has been created by the user to demonstrate pattern matching in functions
  """
  def find_area_rectangle({:rectangle , a , b}) do
    a*b
  end
  def find_area_square({:square , a}) do
    a*a
  end
end
areaOfRectangle=PatternMatching.find_area_rectangle({:rectangle , 2, 3}) #Pattern matching is applied when passing arguments
areaOfSquare=PatternMatching.find_area_square({:square , 2})
IO.puts(areaOfRectangle)
IO.puts(areaOfSquare)
