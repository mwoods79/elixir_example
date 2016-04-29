defmodule Example.Pipeline do

  def transform_data do
    with {:ok, value} <- get_data_from_internet,
         {:ok, value} <- put_data_in_storage(value),
         {:ok, value} <- make_second_api_request(value),
         {:ok, value} <- put_data_in_storage(value),
    do: transform_result(value)
  end

  def get_data_from_internet do
    random_failure({:ok, :got_it}, {:error, :getting_data})
  end

  def put_data_in_storage(thing_to_store)do
    random_failure({:ok, thing_to_store}, {:error, :data})
  end

  def make_second_api_request(_value) do
    random_failure({:ok, :second_request}, {:error, :second_data})
  end

  def transform_result(value) do
    value
  end

  defp random_failure(pass, fail) do
    if Enum.random(1..10) > 2 do
      pass
    else
      fail
    end
  end
end
