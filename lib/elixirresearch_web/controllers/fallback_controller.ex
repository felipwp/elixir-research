defmodule ElixirresearchWeb.FallbackController do
  use ElixirresearchWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(ElixirresearchWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
