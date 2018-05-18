# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :contact_book,
  ecto_repos: [ContactBook.Repo]

# Configures the endpoint
config :contact_book, ContactBookWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uaytGZeuzieCC/XQz3Sbw85OqC1F23XLOFLc4J9IBPgwFyJSRdKMXrQn9wSuEnol",
  render_errors: [view: ContactBookWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ContactBook.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
