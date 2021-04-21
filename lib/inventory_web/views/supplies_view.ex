defmodule InventoryWeb.SuppliesView do
  use InventoryWeb, :view

  def render("create.json", %{supply: supply}) do
    %{
      message: "Supply Created!",
      supply: supply
    }
  end

  def render("show.json", %{supply: supply}) do
    %{
      supply: supply
    }
  end
end
