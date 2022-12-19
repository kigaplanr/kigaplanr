defmodule Kigaplanr.Repo.Migrations.CreateParentPost do
  use Ecto.Migration

  def change do
    create table(:parent_post) do
      add :post, :string
    end
  end
end
