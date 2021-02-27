defmodule Elixirresearch.Users.Create do
  alias Elixirresearch.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
