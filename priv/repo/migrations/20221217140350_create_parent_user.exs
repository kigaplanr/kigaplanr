defmodule Kigaplanr.Repo.Migrations.CreateParentUser do
  use Ecto.Migration

  def change do
    create table(:parent_user) do
      add :first_name, :string
      add :last_name, :string
      # this needs to be related to children_table
      add :child_name, :string
    end
  end
end
