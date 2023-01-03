defmodule Kigaplanr.Repo.Migrations.CreateChildren do
  use Ecto.Migration

  def change do
    create table(:children) do
      add :first_name, :string
      add :last_name, :string
      add :parent_name, :string
    end
  end
end
