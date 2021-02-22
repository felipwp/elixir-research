defmodule Elixirresearch.Repo do
  use Ecto.Repo,
    otp_app: :elixirresearch,
    adapter: Ecto.Adapters.Postgres
end
