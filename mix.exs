defmodule Flare.Mixfile do
  use Mix.Project

  def project do
    [
      app: :flare,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:poison, "~> 3.1"},
      {:httpipe_adapters_hackney, "~> 0.9"},
      {:httpipe, "~> 0.9"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    "Elixir client for CloudFlare v4 API"
  end

  defp package do
    [
      files: ~w(lib .formatter.exs mix.exs README*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/duksis/flare"}
    ]
  end
end
