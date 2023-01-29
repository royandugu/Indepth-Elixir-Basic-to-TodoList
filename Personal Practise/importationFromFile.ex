defmodule TodoList do
  defstruct number_of_items: 0, todos: %{}
  defmodule TodoList.CsvImporter do
    def import(path) do
      {:ok , contents}=File.read(path) #output{:ok , "Everything that is present"}
      listOfTodos=String.split(contents,"\n")|>Enum.map(fn x -> String.split(x,",") end) #[[],[]]
    end
  end
end
TodoList.TodoList.CsvImporter.import("todos.csv")
