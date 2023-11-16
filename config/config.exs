# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :users_api,
  ecto_repos: [UsersApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :users_api, UsersApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BIpry2W+NJJr9W39R1XsQsVhMslY+qqXt5N1Aou1wAfqW2NqcoISmrlSWph75kJ1",
  render_errors: [view: UsersApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: UsersApi.PubSub,
  live_view: [signing_salt: "8uZTou0p"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
