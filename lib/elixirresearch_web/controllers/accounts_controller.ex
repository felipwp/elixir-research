defmodule ElixirresearchWeb.AccountsController do
  use ElixirresearchWeb, :controller

  alias Elixirresearch.Account

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Elixirresearch.deposit(params) do
      conn
      |> put_status(:ok)
      |> render("update.json", account: account)
    end
  end
end
