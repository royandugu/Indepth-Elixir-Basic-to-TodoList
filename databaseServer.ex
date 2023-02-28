#run_async function is used to hide the implementation deatils from the user
#get_result function is used to get the result

defmodule DatabaseServer do
  def start do
    spawn(&loop/0) #We reference a function not call it here
  end

  defp loop do
    receive do
      {:query_type, caller, value} -> send(caller,{:query_type , run_query(value)})
    after 4000 -> {:err , "Message not received"}
    end

    loop()
  end

  defp run_query(value) do
    Process.sleep(4000)
    value
  end

  def run_async(server_pid , value) do
    send(server_pid , {:query_type , run_query(value)})
  end

  def get_result do
    receive do
      {:queryType, result} -> result
    after 4000 -> {:err , "Message not received"}
        # code
    end

  end

end

##Creating a Database pool
pool=Enum.map(1..100 , fn _ -> DatabaseServer.start() end)
