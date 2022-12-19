defmodule Kigaplanr.Repo.Migrations.CreateTeacherUser do
  use Ecto.Migration

  def change do
    create table(:teacher_user) do
      add :teacher_name, :string
    end
  end
end
