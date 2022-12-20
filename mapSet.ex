defmodule MapSet do
  def work_with_map_set do
    days=MapSet.new([:monday, :tuesday])
    IO.puts(MapSet.member?(days,:tuesday))
  end
end
MapSet.work_with_map_set()
