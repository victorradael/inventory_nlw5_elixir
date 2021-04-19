defmodule Inventory.Welcomer do
  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  defp evaluate("banana", 42) do
    {:ok, "BANANAAAAAAA"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome #{name}, maiorzão"}
  end

  defp evaluate(name, age) do
    {:error, "You shall nota pass #{name}"}
  end
end
