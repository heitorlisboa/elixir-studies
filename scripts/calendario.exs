defmodule MeuModulo.Calendario do
  def abreviacao_dia_semana(dia_semana) do
    case dia_semana do
      :Domingo -> "Dom"
      :Segunda -> "Seg"
      d when d == :Terca or d == :Terça -> "Ter"
      :Quarta -> "Qua"
      :Quinta -> "Qui"
      :Sexta -> "Sex"
      :Sabado -> "Sab"
      :Sábado -> "Sab"
      _ -> :error
    end
  end

  def abreviacao_mes(mes) do
    cond do
      mes == :Janeiro -> "Jan"
      mes == :Fevereiro -> "Fev"
      mes == :Marco || :Março -> "Mar"
      mes == :Abril -> "Abr"
      mes == :Maio -> "Maio"
      mes == :Junho -> "Jun"
      mes == :Julho -> "Jul"
      mes == :Agosto -> "Ago"
      mes == :Setembro -> "Set"
      mes == :Outubro -> "Out"
      mes == :Novembro -> "Nov"
      mes == :Dezembro -> "Dez"
      true -> :error
    end
  end
end
