defmodule ProjetoElixir.Aplicacao do
  use Application

  def start(_type, _args) do
    children = [
      ProjetoElixir.Servidor,
      ProjetoElixir.Agendador
    ]

    options = [
      strategy: :one_for_one,
      name: ProjetoElixir.Supervisor
    ]

    Supervisor.start_link(children, options)
  end
end
