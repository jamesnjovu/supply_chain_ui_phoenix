defmodule SupplyChainUi.MixProject do
  use Mix.Project

  def project do
    [
      app: :supply_chain_ui,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {SupplyChainUi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_live_view, "~> 0.18.2"},
      {:poison, "~> 3.1.0"},
      {:gettext, "~> 0.20"},
      {:ex_doc, "~> 0.23", only: :dev, runtime: false},
      {:scrivener_ecto, "~> 2.7.0"},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
