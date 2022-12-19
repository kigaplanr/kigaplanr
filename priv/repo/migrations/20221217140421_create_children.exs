defmodule Kigaplanr.Repo.Migrations.CreateChildren do
  use Ecto.Migration

  def change do
    create table(:children) do
      add :child_name, :string
    end
  end
end
