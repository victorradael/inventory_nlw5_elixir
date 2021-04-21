defmodule InventoryWeb.SuppliesController do
  use InventoryWeb, :controller

  alias Inventory.Supply

  alias InventoryWeb.FallbackController

  action_fallback FallbackController

  def create(connection, params) do
    with {:ok, %Supply{} = supply} <- Inventory.create_supply(params) do
      connection
      |> put_status(:ok)
      |> render("create.json", supply: supply)
    end
  end

  def create(connection, %{"id" => uuid}) do
    with {:ok, %Supply{} = supply} <- Inventory.get_supply(uuid) do
      connection
      |> put_status(:ok)
      |> render("show.json", supply: supply)
    end
  end
end
