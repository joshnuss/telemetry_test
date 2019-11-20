defmodule TelemetryTest.Spacehip do
  def accelerate do
    event = [:spaceship, :engines]
    measurements = %{
      timestamp: DateTime.utc_now,
      online: 4,
      speed: 10_000_000_000,
      check_engine_light: :on
    }

    :ok = :telemetry.execute(event, measurements)
  end
end
