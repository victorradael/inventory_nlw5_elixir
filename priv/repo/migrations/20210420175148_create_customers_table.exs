defmodule Inventory.Repo.Migrations.CreateCustomersTable do
  use Ecto.Migration

  def change do
    create table(:customers) do
      add :email, :string
      add :name, :string

      timestamps()
    end

    create unique_index(:customers , [:email])
  end
end
