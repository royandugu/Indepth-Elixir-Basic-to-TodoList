outside_variable=5
lamda=fn ->IO.puts(outside_variable) end
outside_variable=6
lamda.()
