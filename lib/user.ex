defmodule Example.User do

  @github_api Application.get_env(:example, :github_api)

  def get(username) when is_binary(username) do
    @github_api.make_request(:get, "/users/#{username}")
  end
end

