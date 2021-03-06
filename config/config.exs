# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :todo_app,
  ecto_repos: [TodoApp.Repo]

# Configures the endpoint
config :todo_app, TodoApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LH/fxSBb227JHpUba0PZAAYwf8N9NQCVmHe0SrnoUIXuHVUhWXeg3voq0H82qEl/",
  render_errors: [view: TodoApp.ErrorView, accepts: ~w(json)],
  pubsub: [name: TodoApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
