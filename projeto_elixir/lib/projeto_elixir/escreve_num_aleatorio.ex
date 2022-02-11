defmodule ProjetoElixir.EscreveNumAleatorio do
  def escreve do
    caminho_arquivo =
      Path.join([
        :code.priv_dir(:projeto_elixir),
        "arquivo.txt"
      ])

    numero_aleatorio = :rand.uniform(1000)
    File.write!(caminho_arquivo, "Número: #{numero_aleatorio}")
  end
end
