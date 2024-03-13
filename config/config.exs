 # This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :elixir_rest_api,
  ecto_repos: [ElixirRestApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :elixir_rest_api, ElixirRestApiWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [
    formats: [json: ElixirRestApiWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: ElixirRestApi.PubSub,
  live_view: [signing_salt: "PnCjY+YF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :elixir_rest_api, ElixirRestApiWeb.Auth.Guardian,
    issuer: "elixir_rest_api",
    secret_key: "6PnU7Hk6/sUMXNRt8/xtZkrR7+XHK3SjDb2/l/oVhxw5nbZUMxDJKK+M97OhBH+U"
# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
