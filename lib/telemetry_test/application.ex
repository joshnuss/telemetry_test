defmodule TelemetryTest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    :telemetry.attach :test, [:spaceship, :engines], &TelemetryTest.Handler.handle/4, :no_config

    children = [
      # Starts a worker by calling: TelemetryTest.Worker.start_link(arg)
      # {TelemetryTest.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TelemetryTest.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
