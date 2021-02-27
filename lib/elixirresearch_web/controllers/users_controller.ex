defmodule ElixirresearchWeb.UsersController do
  use ElixirresearchWeb, :controller

  alias Elixirresearch.User

  action_fallback ElixirresearchWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Elixirresearch.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
  # defp handle_response({:error, _result} = error, _conn), do: error
end
