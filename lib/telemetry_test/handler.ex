defmodule TelemetryTest.Handler do
  def handle(events, measurement, metadata, config) do
    IO.inspect([events, measurement, metadata, config])
  end
end
