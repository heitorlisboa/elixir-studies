defmodule MeuModulo.Loop do
  def tabuada(numero) do
    lista = []
    tabuada(numero, 1, lista)
  end

  defp tabuada(_, 11, lista), do: lista

  defp tabuada(fator1, fator2, lista) do
    lista = lista ++ [fator1 * fator2]
    tabuada(fator1, fator2 + 1, lista)
  end
end
