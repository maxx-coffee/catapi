defmodule Dummyio do
  @moduledoc false
  alias Dummyio.Client

  def get_breeds(params \\ %{}) do
    query_string =
      %{limit: 10}
      |> Map.merge(params)
      |> URI.encode_query()

    Client.get("/breeds?#{query_string}")
    |> process_response()
  end

  def get_cats(params \\ %{}) do
    query_string =
      %{limit: 10}
      |> Map.merge(params)
      |> URI.encode_query()

    Client.get("/images/search?#{query_string}")
    |> process_response()
  end

  @spec process_response({:ok, %{:body => any, optional(any) => any}}) :: any
  def process_response({:ok, %{body: body}}), do: body
end
