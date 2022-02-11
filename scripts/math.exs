defmodule MeuModulo.Math do
  def soma(x, y), do: x + y

  # Tipo de função anônima que se informa os parâmetros separadamente do corpo
  # da função
  def multiplica(x, y) do
    multi = fn x, y -> x * y end
    multi.(x, y)
  end

  # Tipo de função anônima que se informa os parâmetros no corpo da função
  def divide(x, y) do
    divi = &(&1 / &2)
    divi.(x, y)
  end

  def zero?(0), do: true
  def zero?(n) when is_integer(n), do: false

  def soma_todos_numeros(lista) do
    lista
    |> Enum.filter(&is_number(&1))
    |> Enum.sum()
  end

  def soma_tudo_e_multiplica_por_2(lista) do
    lista
    |> soma_todos_numeros()
    # O then serve para receber um argumento e passá-lo para a função fornecida.
    # Isso é especialmente útil para utilizar funções anônimas a fim de trocar
    # em qual argumento esse valor será passado, já que, com o pipe operator,
    # ele é sempre passado como primeiro argumento
    |> then(&multiplica(2, &1))
  end

  # Essa função será executada se o enumerável for um intervalo (range).
  # Ranges são definidos com um número inicial, dois pontos finais, e um número
  # final, e caso queira definir um passo, basta separá-lo com duas barras
  # e.g. 1..100
  def multiplica_pares_por_5_e_soma(lista) when is_struct(lista, Range) do
    lista
    |> Enum.to_list()
    |> multiplica_pares_por_5_e_soma()
  end

  def multiplica_pares_por_5_e_soma(lista) do
    require Integer

    lista
    # Stream servem para agrupar as funções que serão executadas com um
    # enumerável e executar quando o valor for passado para alguma função do
    # módulo Enum, assim, evitando que uma grande iteração ocorra várias vezes
    |> Stream.filter(&Integer.is_even(&1))
    |> Stream.map(&(&1 * 5))
    |> Enum.sum()
  end
end
