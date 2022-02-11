defmodule ProjetoElixir.EscreveNumAleatorioTest do
  use ExUnit.Case
  import Mock

  test("DadoQue_NaoUsaMock_Quando_ExecutadoDuasVezes_Espere_DoisResultadosDiferentes") do
    ProjetoElixir.EscreveNumAleatorio.escreve()

    primeiro_numero =
      [:code.priv_dir(:projeto_elixir), "arquivo.txt"]
      |> Path.join()
      |> File.read!()

    ProjetoElixir.EscreveNumAleatorio.escreve()

    segundo_numero =
      [:code.priv_dir(:projeto_elixir), "arquivo.txt"]
      |> Path.join()
      |> File.read!()

    assert(primeiro_numero != segundo_numero)
  end

  test("DadoQue_UsaMock_Quando_ExecutadoDuasVezes_Espere_DoisResultadosDiferentes") do
    :ets.new(:numeros, [:set, :private, :named_table])

    with_mock(File,
      write!: fn _path, numero -> :ets.insert_new(:numeros, [{numero}]) end
    ) do
      ProjetoElixir.EscreveNumAleatorio.escreve()
      ProjetoElixir.EscreveNumAleatorio.escreve()
    end

    numeros = :ets.tab2list(:numeros)
    [primeiro_numero, segundo_numero] = numeros

    assert(primeiro_numero != segundo_numero)
  end
end
