import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :core_component_stories, CoreComponentStoriesWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "1WszuKRz0hQLevzS+HpQK1c+IFUcGuANkRboE2xltSjRhosDooYw27jNLR/pb+Qs",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
