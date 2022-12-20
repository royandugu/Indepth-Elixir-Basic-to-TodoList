defmodule PatternMatching do
  @moduledoc "This module is the one I created to
  test pattern matching"
  def match_tuple do
    {name,age}={"Royan",23}
    IO.puts(name)
    IO.puts(age)
    {_,age}={"Arshiya",39}
    value="Royan"
    IO.puts(age)
    {^value,_}={"Royan",23}
    IO.inspect(value)
  end
  def match_string do
    "Bearer" <> token = "Bearer 1234"
    IO.puts(token)
  end
  def match_map do
    %{name: name, age: age}=%{name: "Royan", age: 123}
    IO.puts(name);
    IO.puts(age);
  end
  def match_binary do
    <<a::4 , b::4 >>=<<155>>
    IO.puts(a)
    IO.puts(b)
  end
  def match_list do
    [a,b,c]=[1,2,3]
    IO.puts(a)
    IO.puts(b)
    IO.puts(c)
    [a,a,a]=[1,1,1]
    IO.puts(a)
  end
  def compound_matches do
    [_,{name,_}]=[{"Royan",23},{"Bob",36}]
    IO.puts(name);
  end
end
PatternMatching.match_tuple()
PatternMatching.match_binary()
PatternMatching.match_string()
PatternMatching.match_map()
PatternMatching.match_list()
PatternMatching.compound_matches()
