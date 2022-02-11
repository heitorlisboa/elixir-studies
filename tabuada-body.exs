# Usando body recursion (usando recursividade sem que a última execução seja uma função)
defmodule MeuModulo.Tabuada do
  def calcula(multiplicador)
      when is_integer(multiplicador) and multiplicador > 0 do
    tabuada(multiplicador, 1)
  end

  defp tabuada(_, 11), do: []

  defp tabuada(fator1, fator2) do
    [fator1 * fator2] ++ tabuada(fator1, fator2 + 1)
  end
end
