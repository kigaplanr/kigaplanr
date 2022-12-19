defmodule Kigaplanr.Parents do
  use Ecto.Schema
  import Ecto.Changeset
  alias __MODULE__

  schema "parents" do
    field :parent_name, :string
    has_many :posts, Kigaplanr.Posts
  end

  def changeset(parent, params \\ %{}) do
    parent
    |> cast(params, [:parent_name])
    |> validate_required([:parent_name])
  end

end
