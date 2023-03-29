defmodule DatabaseServer do
  def start do
    spawn(fn ->
      connection = :rand.uniform(1000)
      loop(connection)
    end) #Spawn mah yesle lamdas haru create garirako xa. Imagine like different different processes and all of these contains these lamda
  end

  defp loop(connection) do
    receive do
      {:message , caller , value } -> send(caller , run_query(value,connection))
      after 4000 -> IO.puts("Message not recievend")
    end
    loop(connection) #Puts connection in the argument
  end

  def run_query(value,connectioin) do
    Process.sleep(4000)
    {:ok , connection , value}
  end

end

process_pool = Enum.map(1..100 , fn _ -> DatabaseServer.start() end)
IO.inspect(process_pool)
