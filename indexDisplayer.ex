defmodule IndexDisplayer do
  @moduledoc "This module is used to display the employee along with index
  Enum.with_index first iterates through an individual list with index then Enum.each
  iterates again through individual lists, at the end creating too many iterations
  "
  def get_output(list) do
    Enum.with_index(Enum.each(list,fn {employee,index} -> IO.puts("#{index+1}. #{employee}") end));
  end
end
IndexDisplayer.get_output(["Royan","Arshiya"])
