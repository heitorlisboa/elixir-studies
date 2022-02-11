defmodule MeuModulo.Arquivos do
  def abrir(arquivo) do
    case File.open(arquivo, [:write, :utf8]) do
      {:ok, conteudo} -> conteudo
      {:error, :enoent} -> "Arquivo não encontrado"
      {:error, :eacces} -> "Arquivo sem permissão de leitura"
      _ -> "Erro desconhecido"
    end
  end

  def ler(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} -> IO.puts(conteudo)
      {:error, :enoent} -> "Arquivo não encontrado"
      {:error, :eacces} -> "Arquivo sem permissão de leitura"
      _ -> "Erro desconhecido"
    end
  end

  def escrever(arquivo, mensagem) do
    IO.puts(arquivo, mensagem)
  end

  def fechar(arquivo) do
    File.close(arquivo)
  end
end
