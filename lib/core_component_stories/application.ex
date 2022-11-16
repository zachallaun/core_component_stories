defmodule CoreComponentStories.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      CoreComponentStoriesWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: CoreComponentStories.PubSub},
      # Start the Endpoint (http/https)
      CoreComponentStoriesWeb.Endpoint
      # Start a worker by calling: CoreComponentStories.Worker.start_link(arg)
      # {CoreComponentStories.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CoreComponentStories.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    CoreComponentStoriesWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
