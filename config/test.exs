import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :core_component_stories, CoreComponentStoriesWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "nRaK7jQ25Chz+rj8OdkMyP4ndyI2KWjk+SiQoS8ddG2PRV4jLt4jIY7wnAaFiD9g",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
