defmodule MeuModulo.Concat do
  # Header da função, em que se define os valores padrão dos parâmetros
  def une(string1, string2 \\ nil, separador \\ " ")

  # Como o header já foi definido, não é necessário informar os valores padrão
  # na clausula (clause)
  def une(string1, string2, _separador) when is_nil(string2), do: string1

  def une(string1, string2, separador) do
    string1 <> separador <> string2
  end
end
