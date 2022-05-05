defmodule Dummyio.Client do
  @moduledoc false
  use HTTPoison.Base
  @impl true
  def process_url(url) do
    "https://api.thecatapi.com/v1" <> url
  end

  @impl true
  def process_request_headers(headers) do
    auth_headers = [
      "X-Api-Key": ""
    ]

    [headers | auth_headers] |> List.flatten()
  end

  def process_response_body(body) do
    body |> Jason.decode!()
  end

  # @impl true
  # def process_request_body(body), do: Jason.encode!(body)
end
