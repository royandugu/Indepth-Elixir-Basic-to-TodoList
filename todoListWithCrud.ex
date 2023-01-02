defmodule TodoList do
  defstruct id: 1, tasks: %{} #A structure that consist of two elements the id and the map
  @moduledoc "This module implements a todoList and provides full CRUD functionalities"

  def new, do: %TodoList{} #This function generates an empty structure (todo list)


  def add_item(list,entry) do #entry is a map of date and task

    entry=Map.put(entry, :id , list.id)
    new_entry=Map.put(list.tasks,entry.id,entry)
    %{list | id: new_entry.id+1, tasks: new_entry}

  end

  def get_item(list,date) do
    Map.get(list,date,[]) #This function gets the item on the basis of the date provided
  end

end




#Rough
defmodule PutTest do
  @moduledoc """
    Module to test the put function
  """
  def add_entry(cart,key,value) do
    Map.put(cart,key,value)
  end
end
IO.inspect(PutTest.add_entry(%{}, :id ,1))
