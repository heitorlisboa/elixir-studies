# Usando tail recursion (usando recursividade tendo a última execução como uma função)
defmodule MeuModulo.Tabuada do
  def calcula(multiplicador)
      when is_integer(multiplicador) and multiplicador > 0 do
    tabuada(multiplicador, 1, [])
  end

  defp tabuada(_, 11, lista), do: lista

  defp tabuada(fator1, fator2, lista) do
    tabuada(fator1, fator2 + 1, lista ++ [fator1 * fator2])
  end
end
