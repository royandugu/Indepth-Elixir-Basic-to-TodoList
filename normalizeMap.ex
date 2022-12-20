defmodule NormalizeMap do
  def check_email(%{email: email}), do: {:ok, email}
  def check_email(_), do: {:error, "Email is not provided"}

  def check_password(%{password: password}), do: {:ok, password}
  def check_password(_), do: {:error, "Password is not provided"}

  def get_user(user) do
    case check_email(user) do
      {:error, message} -> IO.puts(message)
      {:ok , email} ->
        case check_password(user) do
          {:error, message} -> IO.puts(message)
          {:ok , password} -> IO.puts("Welcome user" <> email)
        end
    end
  end
end

NormalizeMap.get_user(%{password: "royan@dugu.com"})
