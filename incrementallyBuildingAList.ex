defmodule Test do
  def build_list do
    list=['H','I']
    list=[list, ['L','A']]
    list=[list,['R', 'Y']]
    IO.puts(list)
  end

end
Test.build_list()
