defmodule MeuModulo.Math do
  def soma(x, y), do: x + y

  def multiplica(x, y) do
    multi = fn x, y -> x * y end
    multi.(x, y)
  end

  def divide(x, y) do
    divi = &(&1 / &2)
    divi.(x, y)
  end
end
