defmodule NormalBranching do
  def use_if(n1,n2) do
    if n1>n2, do: "n1 is greater", else: "n2 is greater"
  end
  def use_unless(n1,n2) do
    unless n1>n2, do: "n1 is greater", else: "n2 is greater"
  end
  def use_cond(n1,n2) do
    cond do
      n1>n2 -> IO.puts(n1 <> "Is greater than" <> n2)
      n2>n1 -> IO.puts(n2 <> "Is greater than" <> n1)
      n2==n1 -> IO.puts("Both the numbers are equal")
    end
  end
  def use_case(n1,n2) do
    case n1>=n2 do
      true -> IO.puts(n1 <> "is greater than " <> n2)
      false -> IO.puts(n1 <> "is not greater than" <> n2)
    end
  end
  def use_case_with_fun(n1,n2) do
    defp fun(n1>n2), do: IO.puts(n1 <> "is greater than " <> n2)
    defp fun(n1<n2), do: IO.puts(n1 <> "is not greater than" <> n2)
  end
end
IO.puts(NormalBranching.use_if(1,2))
IO.puts(NormalBranching.use_unless(2,3))
NormalBranching.use_cond(2,2)
NormalBranching.use_case_with_fun(2,2)
