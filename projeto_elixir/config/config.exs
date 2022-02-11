import Config

config(:projeto_elixir, ProjetoElixir.Agendador,
  jobs: [
    {"* * * * *", fn -> GenServer.cast(:servidor, :escreve) end}
  ]
)
