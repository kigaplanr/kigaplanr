defmodule Kigaplanr.Repo.Migrations.CreateParentUser do
  use Ecto.Migration

  def change do
    create table(:parent_user) do
      add :parent_name, :string
    end
  end
end
