defmodule OpenTelemetry.MixProject do
  use Mix.Project

  def project do
    [
      app: :open_telemetry,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/jeffsta/open_telemetry_elixir"
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {OpenTelemetry.Application, []}
    ]
  end

  defp deps do
    []
  end
end
