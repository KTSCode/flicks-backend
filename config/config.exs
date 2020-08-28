# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :flicks,
  ecto_repos: [Flicks.Repo]

# Configures the endpoint
config :flicks, FlicksWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yDkRsF6oeozn7qQbEh1UHHix+JCTGsKhalKVGdfJcvSB6ARdP6ZL+wmSRPKO26/U",
  render_errors: [view: FlicksWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Flicks.PubSub,
  live_view: [signing_salt: "DwMCW82h"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
