defmodule Elixirresearch.Repo.Migrations.CreateAccountsTable do
  use Ecto.Migration

  def change do
    create table :accounts do
      add :balance, :decimal # special for monetary values, different from float.
      add :user_id, references(:users, type: :binary_id)

      timestamps()
    end

    create constraint(:accounts, :balance_must_be_positive_or_zero, check: "balance >= 0")
  end
end
