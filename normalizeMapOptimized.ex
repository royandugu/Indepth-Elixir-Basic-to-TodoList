defmodule NormalizeMapOptimized do
  @moduledoc """
    This is the same program as NormalizeMap
    but it is optimized
  """
  def check_email(%{email: email}), do: {:ok , email}
  def check_email(_), do: {:error , "Email not valid"}

  def check_password(%{password: password}), do: {:ok , password}
  def check_password(_), do: {:error, "Password does not exist"}

  def get_user(user) do
    with {:ok , email} <- check_email(user),
    {:ok , password} <- check_password(user) do
      IO.puts("Sucesfully logged in ")
    end
  end
end
NormalizeMapOptimized.get_user(%{email: "royan@dugu.com"})
