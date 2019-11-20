defmodule TelemetryTest.Handler do
  def handle([:spaceship, :engines], measurement, metadata, config) do
    IO.inspect([:engines, measurement, metadata, config])
  end

  def handle([:spaceship, :lights], measurement, metadata, config) do
    IO.inspect([:lights, measurement, metadata, config])
  end
end
