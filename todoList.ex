defmodule TodoList do
  def new, do: %{}
  def add_item(list,item,date) do

  end
end

defmodule Testing do
  def add_value(todoList,date,list) do
    Map.update(todoList,date,[list],fn [lists] -> [list | lists] end)
  end
  def see_value(todoList) do
    IO.inspect(todoList)
  end
end
list=Testing.add_value(%{1=>["Butter"]},1,"Eggs")
Testing.see_value(list)
