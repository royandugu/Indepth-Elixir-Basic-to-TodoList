defmodule MapTest do
  def new, do: %{id: 1, name: "Royan"}
  def value(map,value) do
    %{map | id: 2 ,  name: value} #Same id mah name laii replace garidiyo, like it doesn't add anything but just replaces it
  end
  def display(map) do
    IO.inspect(map)
  end
end
map=MapTest.new()
MapTest.display(map)
map2=MapTest.value(map,"Buyaon")
MapTest.display(map2)


defmodule StructTest do
  defstruct id: 0 , name: "Admin"
  def new, do: %StructTest{}
  def add_item(structure, value) do
    %StructTest{structure | id: 1, name: value}
  end
  def display(structure) do
    IO.inspect(structure)
  end
end
struct=StructTest.new()
StructTest.display(struct)
struct2=StructTest.add_item(struct,"Organizer")
StructTest.display(struct2)

##Agadi Map.put garyo ra tei update map laii lyayera structure mah jun pahila euta matra map thiyo structure mah tyo euta matra laii dui ota vako map le replace garidiyo
