# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :programming_phoenix,
  ecto_repos: [ProgrammingPhoenix.Repo]

# Configures the endpoint
config :programming_phoenix, ProgrammingPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tWDDR8F3pJdzYyipKGZQj0/i/EjjaEDb1132hxAyHX99o6sqUNmVdy/pymd/5tNj",
  render_errors: [view: ProgrammingPhoenixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ProgrammingPhoenix.PubSub,
  live_view: [signing_salt: "nNQ0WNSW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
