defmodule Crapper.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :post, :string
      add :views, :integer
      add :likes, :integer
      add :user_id, references(:users, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:posts, [:user_id])
  end
end
