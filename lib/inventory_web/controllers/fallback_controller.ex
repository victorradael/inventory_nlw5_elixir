defmodule InventoryWeb.FallbackController do
  use InventoryWeb, :controller

  alias Inventory.ErrorView

  def call(connection, {:error, %{result: result, status: status}}) do
    connection
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end
end
