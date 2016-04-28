defmodule Example.GithubMock do

  def make_request(:get, "/users/mwoods79") do
    {:ok, %{
      body:
        %{
          "login" => "mwoods79",
          "avatar_url" => "https://avatars.githubusercontent.com/u/129749?v=3",
        }
      }
    }
  end
end
