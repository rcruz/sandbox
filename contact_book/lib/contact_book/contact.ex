defmodule ContactBook.Contact do
  defstruct [:first_name, :last_name, :email, :address]

  def new(%{first_name: first_name, last_name: last_name, email: email, address: address}) do
    %ContactBook.Contact{
      first_name: first_name,
      last_name: last_name,
      email: email,
      address: address
    }
  end
end
