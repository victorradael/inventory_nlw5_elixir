defmodule InventoryWeb.CustomersView do
  use InventoryWeb, :view

  def render("create.json", %{customer: customer}) do
    %{
      message: "Customer Created!",
      customer: customer
    }
  end
end
