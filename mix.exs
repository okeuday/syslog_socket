#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule SyslogSocket.Mixfile do
  use Mix.Project

  def project do
    [app: :syslog_socket,
     version: "2.0.7",
     language: :erlang,
     erlc_options: [
       {:d, :erlang.list_to_atom(~c"ERLANG_OTP_VERSION_" ++ :erlang.system_info(:otp_release))},
       :deterministic,
       :debug_info,
       :warn_export_vars,
       :warn_unused_import,
       #:warn_missing_spec,
       :warnings_as_errors],
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
    [files: ~w(src doc test rebar.config README.markdown LICENSE),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/okeuday/syslog_socket"}]
   end
end
