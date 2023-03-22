defmodule RemoteChallengeMailerTest do
  use ExUnit.Case, async: true

  describe "send_email/1" do
    test "fails with invalid attrs" do
      assert RemoteChallengeMailer.send_email(:invalid) == {:error, :invalid_attrs}
    end

    test "sends the email" do
      result =
        Enum.reduce_while(1..15, nil, fn _index, _acc ->
          case RemoteChallengeMailer.send_email(%{name: "Legolas"}) do
            {:ok, _name} = result -> {:halt, result}
            {:error, _reason} = result -> {:cont, result}
          end
        end)

      assert {:ok, _} = result
    end
  end
end
