defmodule ProjetoElixirTest do
  use ExUnit.Case
  doctest ProjetoElixir

  test "greets the world" do
    assert ProjetoElixir.hello() == :world
  end
end
