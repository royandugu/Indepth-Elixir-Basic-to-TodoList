defmodule AreaCalculator do
  @pi 3.14
  @moduledoc """
    This is a module that calculates the area
  """
  def circle(radius) do
    IO.puts(@pi*radius*radius)
  end
end
AreaCalculator.circle(10)
defmodule VolumeCalculator do
  @spec circle(number)  char
  def circle(radius) do
    2*3.14*radius
  end
end
IO.puts(VolumeCalculator.circle(12))
