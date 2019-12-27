defmodule FlareTest do
  use ExUnit.Case
  doctest Flare

  test "base returns the API base url" do
    assert Flare.base() == "https://api.cloudflare.com/client/v4/"
  end
end
