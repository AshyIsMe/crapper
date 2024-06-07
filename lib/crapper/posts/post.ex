defmodule Crapper.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :post, :string
    field :views, :integer
    field :likes, :integer
    field :user_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:post, :views, :likes])
    |> validate_required([:post, :views, :likes])
    |> validate_length(:post, max: 280)
  end
end
