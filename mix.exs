defmodule OpenTelemetry.MixProject do
  use Mix.Project

  @repo_url "https://github.com/jeffsta/open_telemetry_elixir"

  def project do
    [
      app: :open_telemetry,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: @repo_url,
      description: description(),
      license: "MIT",
      links: "",
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {OpenTelemetry.Application, []}
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.24", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    Open Telemetry SDK for Elixir.
    OTEL project: https://opentelemetry.io/
    """
  end

  defp package() do
    [
      maintainers: ["Jefferson Stachelski"],
      files: ~w(lib .formatter.exs mix.exs README.md LICENSE.md),
      licenses: ["MIT"],
      links: %{"GitHub" => @repo_url}
    ]
  end
end
