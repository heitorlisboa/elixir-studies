defmodule Mix.Tasks.Escreve do
  @moduledoc """
  Escreve um número aleatório no arquivo.txt encontrado na pasta /priv
  """
  use Mix.Task
  @shortdoc "Escreve um número aleatório no arquivo.txt"
  def run(_) do
    ProjetoElixir.EscreveNumAleatorio.escreve()
  end
end
