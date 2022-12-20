defmodule Geometry do
  def enter_values do
    length=2
    breadth=2
    if length===breadth do
      IO.puts(Geometry.Square.get_area(length))
    else
      IO.puts(Geometry.Rectangle.get_area(length,breadth))
    end

  end
end
defmodule Geometry.Rectangle do
  def get_area(length,breadth) do
    IO.puts("It is a rectangle")
    length*breadth
  end
end
defmodule Geometry.Square do
  def get_area(length) do
    IO.puts("It is a square")
    length*length
  end
end
Geometry.enter_values()
