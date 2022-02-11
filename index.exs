defmodule MeuModulo do
  # Importa apenas o que foi informado
  import IO, only: [puts: 1]
  # Importa tudo, exceto o que foi informado
  import Kernel, except: [inspect: 1]
  # Em ambos os casos acima, 1 é a eridade (erity) da função

  def ola_mundo do
    inspect("Olá, mundo!")
  end

  def teste_soma do
    # alias não importa o módulo, mas muda o nome dele se estiver importado
    # Caso "as:" esteja informado, esse será o nome da função,
    # caso não esteja o nome será nome depois do último "." (ponto)
    alias MeuModulo.Math, as: MyMath
    MyMath.soma(4, 5)
  end

  def par?(numero) do
    # Require é utilizado para importar macros
    # Macros são funções que não estão definidas ainda,
    # mas que possuem o código para serem definidas
    require Integer
    Integer.is_even(numero)
  end

  defp inspect(parametro) do
    puts("Começando a inspeção")
    puts(parametro)
    puts("Terminando a inspeção")
  end
end
