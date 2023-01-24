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

  def add_item(structure, entry)  do #structure is the structure and entry is the map
    entry=Map.put(entry, :id , structure.auto_id)
    new_entry=Map.put(structure.tasks, structure.auto_id , entry)
    %TodoList{structure | auto_id: structure.auto_id+1 , tasks: new_entry} #embedding the new list to current one and returning it
  end

  def filter_items(structure,date) do
    structure.tasks|>Stream.filter(fn {_ , entries} -> entries.date === date end) |> Enum.map(fn {_ , items} -> items end) #This makes both of them run at same time
  end

  def update_items(structure,date,value) do
    update_entry=fn (old_entry) -> %{old_entry | date: date , items: value} end
    case Map.fetch(structure.tasks,date) do
      :error -> structure
      {:ok, old_entry} ->
        new_value=update_entry.(old_entry)
        update_list=Map.put(structure.tasks,old_entry.id,new_value)
        %TodoList{structure | auto_id: structure.auto_id , tasks: update_list}
    end
  end

  # def delete_items(structure, date) do
  #   case Map.fetch(structure.tasks,date) do
  #     :error -> structure
  #     {:ok , match} ->
  #       IO.puts("Below")
  #       new_value=Map.filter(structure.tasks, fn x -> IO.inspect(x) end)
  #       IO.inspect(new_value)
  #       update_list=Map.put(structure.tasks,match.id,new_value)
  #       %TodoList{structure | auto_id: structure.auto_id , tasks: update_list}
  #   end
  # end
  #Do update_items again

  def display(structure) do
    IO.inspect(structure)
  end

end
todoList1=TodoList.new
todoList1=TodoList.add_item(todoList1,%{date: 1 , items: "Popcorn"})
todoList1=TodoList.add_item(todoList1,%{date: 2 , items: "Yolk"})
TodoList.display(todoList1)
filterValue=TodoList.filter_items(todoList1, 1)
TodoList.display(filterValue)
value=TodoList.update_items(todoList1, 1, "Cheese")
TodoList.display(value)
# TodoList.delete_items(todoList1,1)
# IO.puts("After deleting")
# TodoList.display(todoList1)

## We created a structure with auto_id which is a number and a tasks which is a map of date, id and items. In update items logic, we pass in the key and the value. That is map ko kun chain key laii kun chai value le replace garne ho vanera. Then we first check if it exists or not. We use case statement. Here, case statement returns either :error atom or a tuple of {:ok , list}, the list that we passed. Then if we get the second tuple then we update our entry
