defmodule RecursiveTailing do
  def find_sum(currentSum,[]) do
    currentSum;
  end
  def find_sum(currentSum,[head | tail]) do
    new_sum=head+currentSum
    find_sum(new_sum,tail) #This is called tailing
  end
end
IO.puts(RecursiveTailing.find_sum(0,[1,2,3]))
