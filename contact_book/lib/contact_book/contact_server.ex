defmodule ContactBook.ContactServer do
  use GenServer
  alias ContactBook.Contact

  def start_link({process_name, contact}) do
    GenServer.start_link(__MODULE__, contact, name: process_name)
  end

  def init(contact) do
    {:ok, Contact.new(contact)}
  end

  def handle_call(:contact, _from, state) do
    {:reply, state, state}
  end

  def get_contacts do

  end
end
