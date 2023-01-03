defmodule Kigaplanr.Repo.Migrations.CreateTeacherUser do
  use Ecto.Migration

  def change do
    create table(:teacher_user) do
      add :admin_name, :string
      add :password_hash, :string
    end
  end
end
