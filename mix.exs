defmodule Util.Mixfile do
  use Mix.Project

  def project do
    [app: :utilex,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     description: description(),
     name: "Utilex",
     source_url: "https://github.com/harrisonl/utilex",
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end

  defp description() do
    """
      Useful utilities that can be used across a range of elixir projects.
    """
  end

  defp package do
    # These are the default files included in the package
    [
      name: :utilex,
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      maintainers: ["Harrison Lucas"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/harrisonl/utilex"}
    ]
  end
end
