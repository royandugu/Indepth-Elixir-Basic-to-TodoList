defmodule Parent do
  defstruct hello: %{}

  defmodule Parent.Child do
    def new, do: %Parent{}
  end

end
Parent.Parent.Child.new();

##Error
