defmodule TelemetryTest.Thing do
  def do_stuff do
    event = [:spaceship, :engines]
    measurements = %{
      timestamp: DateTime.utc_now,
      count: 10,
      speed: 10_000_000_000,
      check_engine_light: :on
    }

    :ok = :telemetry.execute(event, measurements)
  end
end
