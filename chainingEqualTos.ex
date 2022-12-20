defmodule Chaining do
  @moduledoc "Chaining equal to signs"
  def lets_chain do
    {_,{hour,_,_}}=date_time=:calendar.local_time
    #This simply means that the erlang function calendar.local time returns a tuple
    #of date and time. So the tuple is stored in date_time plus it is further pattern matched
    #like the date is ignored, it is set into an anonymous variable and for the time, we only take the our
    IO.puts(hour)
    IO.inspect(date_time)
  end
end
Chaining.lets_chain()
