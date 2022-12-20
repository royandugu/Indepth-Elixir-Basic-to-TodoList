defmodule Geometry do
  @moduledoc "
    This module calculates the areas of different shapes provided
  "
  def area({:rectangle , a, b}) do
    a*b
  end
  def area({:square , a}) do
    a*a
  end
  def area({:circle , r}) do
    pi=3.17
    pi*r*r
  end
  #note : If this function was defined first then we would always get the error clause first
  def area(_unknown) do
    {:error , %{message: "Unknown values detected"}}
  end
end
areaOfRectangle=Geometry.area({:rectangle , 2,3})
areaOfCircle=Geometry.area({:circle , 5})
areaOfSquare=Geometry.area({:square , 5})
errorArea=Geometry.area(22)
IO.puts(areaOfRectangle)
IO.puts(areaOfCircle)
IO.puts(areaOfSquare)
IO.inspect(errorArea);
