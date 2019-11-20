defmodule TelemetryTest.Thing do
  def do_stuff do
    :ok = :telemetry.execute([:spaceship, :engines], %{count: 10, speed: 10_000_000_000, check_engine_light: :on})
  end
end
