defmodule BEChallengex.Services.ListNamesFromFileTest do
  use ExUnit.Case, async: true

  alias BEChallengex.Services.ListNamesFromFile

  test "successfully returns a list of names" do
    assert "Mirabel" in ListNamesFromFile.call()
  end
end
