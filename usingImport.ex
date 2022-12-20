defmodule Displayer do
  import IO
  defp display_message do
    puts("Hello world")
  end
  def call_display_message do
    display_message()
  end
end
Displayer.call_display_message()
