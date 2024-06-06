defmodule Crapper.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Crapper.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        likes: 42,
        post: "some post",
        views: 42
      })
      |> Crapper.Posts.create_post()

    post
  end
end
