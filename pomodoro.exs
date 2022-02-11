defmodule MeuModulo.Pomodoro do
  def iniciar do
    ciclo =
      (Enum.to_list(1..25) ++ Enum.to_list(1..5))
      |> Stream.cycle()

    Enum.map(ciclo, &alertar_minuto_passado(&1))
  end

  defp alertar_minuto_passado(minuto) do
    IO.puts(minuto)
    # 1 minuto de sleep
    :timer.sleep(1000 * 60)
  end
end
