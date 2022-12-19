defmodule Kigaplanr.Posts do
  use Ecto.Schema

  schema "posts" do
    field :post, :string
    field :parents_id, :integer
  end
end
