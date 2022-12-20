defmodule Range do
  def loop do
    Enum.each(1..3,&IO.puts/1)
  end
end
Range.loop
