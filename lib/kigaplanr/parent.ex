defmodule Kigaplanr.Parents do
  alias Kigaplanr.Repo
  alias Kigaplanr.Parents.Generate

  def generate_parent(attrs \\ %{}) do
    %Generate{}
    |> Generate.changeset(attrs)
    |> Repo.insert()
  end
end
