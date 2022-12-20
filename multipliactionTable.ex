defmodule MultiplcationTable do
  @moduledoc """
    This module uses comprehensions to display the multiplication table
  """
  def display_table do
    for x<-[1,2,3],y<-[4,5,6], into: %{} do
      IO.inspect({{x*y},x});
    end
  end
  def display_table_condition do
    for x<-[1,2,3], y<-[1,3,4], y<=x do
      IO.inspect([x,y])
    end
  end
end

MultiplcationTable.display_table_condition()
