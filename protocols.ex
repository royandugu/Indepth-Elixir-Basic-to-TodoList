defmodule Protocol do
  @moduledoc " This is a module that implements protocol. Basically a restriction that only the integer values can be entered and nothing else"
  defprotocol Printer do
    def print(thing)
  end

  defimpl Printer, for: Integer do
    def print(thing) do
      IO.puts(thing)
    end
  end


end
Protocol.Printer.print(1)
