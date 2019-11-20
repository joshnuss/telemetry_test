defmodule TelemetryTest.Handler do
  def handle([:spaceship, :engine], measurement, metadata, config) do
    IO.inspect([measurement, metadata, config])
  end
end
