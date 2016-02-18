# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :hello_phoenix, HelloPhoenix.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "3leK6/OafGrS0JgWD8uSO7mPfGVvBYkKpbARcFrwJcoVxPkOukHbmRU9lQwj8XNm",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: HelloPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

# Define your application's host and port (defaults to "http://localhost:4001")
#config :hound, app_host: "http://localhost", app_port: 4000

# Start with selenium driver (default)
config :hound, driver: "selenium"

# Use Chrome with the default driver (selenium)
config :hound, browser: "chrome"

# Start with default driver at port 1234 and use firefox
#config :hound, browser: "firefox"

# Start Hound for PhantomJs
#config :hound, driver: "phantomjs"

# Start Hound for ChromeDriver (default port 9515 assumed)
#config :hound, driver: "chrome_driver"



