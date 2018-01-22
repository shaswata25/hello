# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :learning_phx,
  ecto_repos: [LearningPhx.Repo]

# Configures the endpoint
config :learning_phx, LearningPhxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WS5J7zzFkEFbuxjH+KfYGyXCwCS9kjKgkRLR7I5bzAHL/UnFs8iXA1g37HP7bKgD",
  render_errors: [view: LearningPhxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LearningPhx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
