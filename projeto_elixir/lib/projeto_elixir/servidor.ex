defmodule ProjetoElixir.Servidor do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: :servidor)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_cast(:escreve, _opt) do
    ProjetoElixir.EscreveNumAleatorio.escreve()
    {:noreply, %{}}
  end
end
