defmodule DateTimeWorking do
  @moduledoc """
    This module works with date time
  """
  def create_date do
    date=~D[2022-8-11]
    IO.puts(date.year)
    IO.puts(date.month)
    IO.puts(date.day)
  end
end
DateTimeWorking.create_date
