defmodule InputValidator do
  def check_valid(user) do
    case (Enum.filter([:email , :password], &(not Map.has_key?(user,&1)))) do
      [] -> IO.puts("This login is valid")
      anything -> IO.puts("This login is invalid")
    end
  end
end
InputValidator.check_valid(%{email: "royan@gmail.com" , password: "123" });
