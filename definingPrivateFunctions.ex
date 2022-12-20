defmodule Test do
  defp private_func do
    IO.puts("I am private")
  end
  def public_func do
    IO.puts("I am public function")
    private_func()
  end
end
Test.public_func
