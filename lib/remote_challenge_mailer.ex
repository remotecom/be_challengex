defmodule RemoteChallengeMailer do
  @moduledoc """
  Mailer client to be used on Remote's code challenge
  """

  @doc """
  Attempts to send an email to a user.

  To make the challenge simpler instead of this function receiving a user email it receives a name.
  """
  @spec send_email(%{name: String.t()}) :: {:ok, String.t()} | {:error, atom()}
  def send_email(%{name: name}) when is_binary(name) do
    sleep_time = calculate_sleep_time_in_ms()

    # simulate send email
    :timer.sleep(sleep_time)

    case Enum.random(1..50_000) do
      1 -> {:error, :econnrefused}
      _ -> {:ok, name}
    end
  end

  def send_email(_), do: {:error, :invalid_attrs}

  defp calculate_sleep_time_in_ms, do: Enum.random(500..900)
end
