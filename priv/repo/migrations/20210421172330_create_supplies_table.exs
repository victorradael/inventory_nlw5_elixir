defmodule Inventory.Repo.Migrations.CreateSuppliesTable do
  use Ecto.Migration

  def change do
    create table(:supplies) do
      add :description, :string
      add :expiration_date, :date
      add :responsible, :string
      add :customer_id, references(:customers, type: :binary_id)

      timestamps()
    end
  end
end
