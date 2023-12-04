defmodule PlugHmacAuth.MixProject do
  use Mix.Project

  @version "0.2.0"
  @name "PlugHmacAuth"
  @description "A Plug adapter for HMAC authentication"

  def project do
    [
      app: :plug_hmac_auth,
      version: @version,
      elixir: "~> 1.14",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      name: @name,
      description: @description,
      docs: [
        extras: [
          "README.md"
        ],
        main: "PlugHmacAuth",
        source_ref: "v#{@version}",
        source_url: "https://github.com/flipay/plug_hmac_auth"
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:plug, "~> 1.14.2"},
      {:dialyxir, "~> 1.4.2", only: :dev, runtime: false},
      {:ex_doc, "~> 0.29.4", only: :dev, runtime: false}
    ]
  end

  defp package do
    %{
      licenses: ["MIT"],
      maintainers: ["Neo Ho"],
      links: %{"GitHub" => "https://github.com/flipay/plug_hmac_auth"}
    }
  end
end
