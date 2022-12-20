defmodule Test do
  def keyword_list do
    days=[monday: 1, tuesday: 2]
    IO.puts(days[:monday])
  end
end
Test.keyword_list()
