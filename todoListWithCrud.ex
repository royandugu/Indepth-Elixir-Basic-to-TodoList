# defmodule TodoList do
#   defstruct auto_id: 1, tasks: %{} #A structure that consist of two elements the id and the map
#   @moduledoc "This module implements a todoList and provides full CRUD functionalities"

#   def new, do: %TodoList{} #This function generates an empty structure (todo list)


#   def add_item(list,entry) do #entry is a map of date and task

#     entry=Map.put(entry, :id , list.auto_id)
#     new_entry=Map.put(list.tasks,list.auto_id,entry)
#     %{list | auto_id: list.auto_id+1, tasks: new_entry}
#     #predicted data structure %TodoList{id : , tasks: %{id: , %{date: , id: , value: }}}
#   end
#   def display(list) do
#     IO.inspect(list)
#   end

#   def get_item(list,date) do
#     Map.get(list,date,[]) #This function gets the item on the basis of the date provided
#   end

# end

# todoList=TodoList.new
# todoList2=TodoList.new
# todoList=TodoList.add_item(todoList,%{date: 1 , item: "eggs"})
# todoList2=TodoList.add_item(todoList2,%{date: 2 , item: "Yolk"})
# TodoList.display(todoList)
# TodoList.display(todoList2)
# #Rough
defmodule PutTest do
  @moduledoc """
    Module to test the put function
  """
  def add_entry(cart,key,value) do
    Map.put(cart,key,value)
  end
end
# IO.inspect(PutTest.add_entry(%{}, :id ,1))


defmodule TodoList do
  defstruct auto_id: 1, tasks: %{}

  def new, do: %TodoList{}

  def add_item(list, entry)  do #list is the structure and entry is the map
    entry=Map.put(entry, :id , list.auto_id)
    new_entry=Map.put(list.tasks, list.auto_id , entry)
    %TodoList{list | auto_id: list.auto_id+1 , tasks: new_entry} #embedding the new list to current one and returning it
  end

  def filter_items(list,date) do
    IO.puts("Below is the targeted")
    Stream.map(list.tasks, fn x -> IO.inspect(x) end)
    result=Stream.filter(list.tasks, fn {_ , entries} -> entries.date === date end)
    final_result = Enum.filter(result, fn {_ , items} -> items.date === date end)
    IO.inspect(result)
    IO.inspect(final_result)
  end

  def display(list) do
    IO.inspect(list)
  end


end
todoList1=TodoList.new
todoList1=TodoList.add_item(todoList1,%{date: 1 , items: "Popcorn"})
todoList1=TodoList.add_item(todoList1,%{date: 2 , items: "Yolk"})
TodoList.display(todoList1)
TodoList.filter_items(todoList1, 1)
