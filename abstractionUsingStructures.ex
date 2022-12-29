defmodule Fraction do
  @moduledoc """
    Structural abstraction to work with fractions
  """
  defstruct a: nil, b: nil

  def new(a,b) do
    %Fraction{a: a , b: b} #syntactic sugaring
  end

  def value(%Fraction{a: a , b: b}) do
    a/b
  end

  def add(%Fraction{a: a1, b: b1},%Fraction{a: a2, b: b2}) do
    (a1*a2)/(b1*b2)
  end
end

#Struct create hunu vanda paila naii yo line execute vayo. In book things are shown from the interactive shell
Fraction.value(%Fraction{a: 1, b: 2})
#When we try to create a Fraction right here ann error pops up cannot access struct, So try it in iex
