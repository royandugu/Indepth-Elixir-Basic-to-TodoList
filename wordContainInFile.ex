defmodule WorldContainer do
  @moduledoc "This is a module that reads
  values from the file and displays the words representing word count
  File reading functionalities:
  when any line ends in files it gives slash n that is break the liine
  Issue vaneko harek euta main hudai janxa
  "

  def read_file do
    File.read("textFile.txt")|>Tuple.to_list|>get_tail
  end
  def get_tail([head | tail]) when head==="n" do
    tail
  end
  def get_tail([_head | tail]) do
    IO.puts("I am called")
    tail
    get_tail(tail)
  end
 end
WorldContainer.read_file()
