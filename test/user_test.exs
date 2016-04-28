defmodule Example.UserTest do
  use ExUnit.Case
  alias Example.User

  test "retrieving user" do
    assert {:ok, response} = User.get("mwoods79")
    assert %{"login" => "mwoods79"} = response.body
    assert %{"avatar_url" => _} = response.body
  end
end
