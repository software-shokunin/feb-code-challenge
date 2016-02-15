defmodule NoMath.Mixfile do
  use Mix.Project

  def project do
    [app: :no_math,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     escript: [main_module: NoMath.CLI]
     ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

end
