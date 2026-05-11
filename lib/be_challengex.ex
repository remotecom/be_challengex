defmodule BEChallengex do
  @moduledoc """
  Top level module to be used on Remote's code challenge
  """

  @names BEChallengex.Services.ListNamesFromFile.call()

  @doc """
  Sends an email to a user.
  """
  @spec send_email(%{to: String.t()}) :: {:ok, String.t()} | {:error, atom()}
  def send_email(%{to: to}) when is_binary(to) do
    sleep_time = calculate_sleep_time_in_ms()

    # simulate send email
    :timer.sleep(sleep_time)

    case Enum.random(1..500_000) do
      1 -> {:error, :econnrefused}
      _ -> {:ok, to}
    end
  end

  def send_email(_), do: {:error, :invalid_attrs}

  @doc """
  Returns a list containing examples of user names
  """
  @spec list_names() :: list(String.t())
  def list_names, do: @names

  defp calculate_sleep_time_in_ms, do: Enum.random(0..2)
end
