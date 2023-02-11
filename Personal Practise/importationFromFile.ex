defmodule TodoList do
  defstruct number_of_items: 0, todos: %{}

  defmodule TodoList.CsvImporter do

    #This function imports the list from the todos.cs
    def import(path,value) do
      {:ok , contents}=File.read(path) #output{:ok , "Everything that is present"}
      listOfTodos=String.split(contents,"\n")|>Stream.map(fn x -> String.split(x,",") end) |> Enum.map(fn x-> %{date: Enum.at(x,0), todo: Enum.at(x,1)} end)
    end

  end
end
TodoList.TodoList.CsvImporter.import("todos.csv",0)
