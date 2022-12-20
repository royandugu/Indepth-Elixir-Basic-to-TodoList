defmodule DefiningMap do
  @moduledoc """
    This module defines a map and updates it
  """
  def update_map do
    initial=%{name: "Royan", age: 24}
    IO.inspect(initial)
    final=%{initial | age: 26}
    IO.inspect(final)
  end
end
DefiningMap.update_map()
