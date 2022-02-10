defmodule MeuModulo do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  def ola_mundo do
    inspect("Olá, mundo!")
  end

  def teste_soma do
    alias MeuModulo.Math, as: MyMath
    MyMath.soma(4, 5)
  end

  def par?(numero) do
    require Integer
    Integer.is_even(numero)
  end

  defp inspect(parametro) do
    puts("Começando a inspeção")
    puts(parametro)
    puts("Terminando a inspeção")
  end
end
