defmodule StreamTester do
  @moduledoc """
    This module is used to test stream
  """
  def test_stream(list) do
    IO.inspect(Enum.to_list(Stream.map(list,fn x-> 2*x end)))
  end
  def index_using_stream(list) do
    Stream.with_index(list)|>Enum.map(fn {employee, index}-> IO.puts("#{index+1}. #{employee}") end)
  end
end
StreamTester.test_stream([1,2,3])
StreamTester.index_using_stream(["Royan","Abilekh","Vikram"])
