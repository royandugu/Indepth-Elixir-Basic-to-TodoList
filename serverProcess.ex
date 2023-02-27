defmodule ServerProcess do
  @moduledoc """
    This module is used to represent a server process : A process that runs
    for a long time
  """
  def start do
    spawn(loop())
  end

  defp loop do
    IO.puts("Entered loop")
    receive do
      {:ok, value} -> send(self(),run_query(value));
      after 4000 -> {:error , "Message not received"}
    end
    loop()
  end

  defp run_query(value) do
    IO.puts("Entered run_query")
    Process.sleep(4000)
    IO.inspect(value)
    {:ok , "Hello world"}
  end
end

#Yo sabai implementation hamro GenServer le gareko hunxa


ServerProcess.start()
#Client uses the Start function to create a server process
#The loop function only calls itself when it recieves the message sent
#Received messages are returned. The one with the :ok atom
