defmodule Flicks.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Flicks.Repo,
      # Start the Telemetry supervisor
      FlicksWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Flicks.PubSub},
      # Start the Endpoint (http/https)
      FlicksWeb.Endpoint
      # Start a worker by calling: Flicks.Worker.start_link(arg)
      # {Flicks.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Flicks.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    FlicksWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
