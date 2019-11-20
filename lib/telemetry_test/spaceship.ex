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

    event = [:spaceship, :lights]
    measurements = %{
      timestamp: DateTime.utc_now,
      online: 22,
      lumens: 10_000_000_000
    }

    :ok = :telemetry.execute(event, measurements)
  end
end
