# defmodule ElixirRestApiWeb.AccountHTML do
#   use ElixirRestApiWeb, :html

#   embed_templates "account_html/*"
# end

defmodule ElixirRestApiWeb.AccountView do
  use ElixirRestApiWeb, :view
  alias ElixirRestApiWeb.AccountView

  def render("index.json", %{accounts: accounts}) do
    %{data: render_many(accounts, AccountView, "account.json")}
  end

  def render("show.json", %{account: account}) do
    %{data: render_one(account, AccountView, "account.json")}
  end

  def render("account.json", %{account: account}) do
    %{
      id: account.id,
      email: account.email,
      hash_password: account.hash_password
    }
  end

  def render("account_token.json", %{account: account, token: token}) do
    %{
      id: account.id,
      email: account.email,
      token: token
    }
  end
end
