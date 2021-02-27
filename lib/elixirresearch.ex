defmodule Elixirresearch do
  alias Elixirresearch.Users.Create, as: UserCreate
  alias Elixirresearch.Accounts.Deposit

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate deposit(params), to: Deposit, as: :call
end
