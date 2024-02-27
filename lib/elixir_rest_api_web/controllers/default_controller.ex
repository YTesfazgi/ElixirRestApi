defmodule ElixirRestApiWeb.DefaultController do
  use ElixirRestApiWeb, :controller

  def index(conn, _params) do
    text conn, "Welcome to Elixir REST API - #{Mix.env()}"
  end
end
