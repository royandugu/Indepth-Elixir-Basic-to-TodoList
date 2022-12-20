defmodule Pipeline do
  def visualize_pipeline do
    2|>add_two|>add_three|>add_four|>display_result
  end
  def add_two(n) do
    n+2
  end
  def add_three(n) do
    n+3
  end
  def add_four(n) do
    n+4
  end
  def display_result(result) do
    IO.puts(result)
  end
end
Pipeline.visualize_pipeline()
