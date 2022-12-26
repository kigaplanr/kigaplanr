defmodule Kigaplanr.Parents.Generate do
  alias Kigaplanr.Parents.Generate
  use Ecto.Schema
  import Ecto.Changeset
  alias __MODULE__

  schema "parents" do
    field :parent_name, :string
  end

  def changeset(%Generate{} = parent, attrs) do
    parent
    |> cast(attrs, [:parent_name])
  end
end
