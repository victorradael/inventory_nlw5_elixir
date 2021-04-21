defmodule Inventory do
  alias Inventory.Customers.Create
  defdelegate create_customer(params), to: Create, as: :call
end
