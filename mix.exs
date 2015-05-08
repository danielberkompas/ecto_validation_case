defmodule EctoValidationCase.Mixfile do
  use Mix.Project

  @version "0.1.1"
  @github "https://github.com/danielberkompas/ecto_validation_case"

  def project do
    [
      app: :ecto_validation_case,
      version: @version,
      elixir: "~> 1.0",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,
      
      # Hex
      description: description,
      package: package,

      # Docs
      name: "Ecto.ValidationCase",
      docs: [
        source_ref: "v#{@version}",
        source_url: @github
      ]
    ]
  end

  def application do
    [applications: []]
  end

  defp description do
    """
    Ecto.ValidationCase simplifies writing validation tests for Ecto models.
    """
  end

  defp package do
    [
      contributors: ["Daniel Berkompas"],
      licenses: ["MIT", "Apache 2.0"],
      links: %{
        "Github" => @github
      }
    ]
  end

  defp deps do
    [{:ecto, ">= 0.11.0"},
     {:ex_doc, ">= 0.0.0"},
     {:inch_ex, only: :docs}]
  end
end
