defmodule SyslogSocket.Mixfile do
  use Mix.Project

  def project do
    [app: :syslog_socket,
     version: "0.2.0",
     language: :erlang,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    []
  end

  defp deps do
    []
  end

  defp description do
    "Erlang syslog Client Interface"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown LICENSE),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"GitHub" => "https://github.com/okeuday/syslog_socket"}]
   end
end
