defmodule Inventory do
  alias Inventory.Customers.Create, as: CustomerCreate
  alias Inventory.Supplies.Create, as: SupplyCreate
  alias Inventory.Supplies.Get, as: SupplyGet

  defdelegate create_customer(params), to: CustomerCreate, as: :call
  defdelegate create_supply(params), to: SupplyCreate, as: :call
  defdelegate get_supply(params), to: SupplyGet, as: :call
end
