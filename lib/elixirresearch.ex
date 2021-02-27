defmodule Elixirresearch do
  alias Elixirresearch.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
