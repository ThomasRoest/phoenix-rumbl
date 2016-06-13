defmodule Rumbl.Repo do
  # use Ecto.Repo, otp_app: :rumbl

  @moduledoc """
  In memory repo
  """

  def all(Rumbl.User) do
    [%Rumbl.User{id: "1", name: "henk", username: "hekkehenkie", password: "elixir"},
    %Rumbl.User{id: "2", name: "henk2", username: "gekkehenkie12", password: "elixir234"},
    %Rumbl.User{id: "3", name: "Bruce", username: "hekkehenkie14", password: "elixir234"}]
  end

  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end

end
