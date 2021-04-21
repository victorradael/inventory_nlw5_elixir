defmodule Inventory.Customers.Create do
  alias Inventory.{Repo, Customer}

  def call(params) do
    params
    |> Customer.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Customer{}} = result), do: result
  defp handle_insert({:error, result}), do: {:error, %{result: result, status: :bad_request}}
end
