defmodule OpenTelemetryTest do
  use ExUnit.Case
  doctest OpenTelemetry

  test "greets the world" do
    assert OpenTelemetry.hello() == :world
  end
end
