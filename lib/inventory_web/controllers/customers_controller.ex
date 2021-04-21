defmodule InventoryWeb.CustomersController do
  use InventoryWeb, :controller

  alias Inventory.Customer

  alias InventoryWeb.FallbackController

  action_fallback FallbackController

  def create(connection, params) do
    with {:ok, %Customer{} = customer} <- Inventory.create_customer(params) do
      connection
      |> put_status(:ok)
      |> render("create.json", customer: customer)
    end
  end
end
