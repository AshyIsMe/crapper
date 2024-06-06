defmodule Crapper.PostsTest do
  use Crapper.DataCase

  alias Crapper.Posts

  describe "posts" do
    alias Crapper.Posts.Post

    import Crapper.PostsFixtures

    @invalid_attrs %{post: nil, views: nil, likes: nil}

    test "list_posts/0 returns all posts" do
      post = post_fixture()
      assert Posts.list_posts() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert Posts.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      valid_attrs = %{post: "some post", views: 42, likes: 42}

      assert {:ok, %Post{} = post} = Posts.create_post(valid_attrs)
      assert post.post == "some post"
      assert post.views == 42
      assert post.likes == 42
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Posts.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()
      update_attrs = %{post: "some updated post", views: 43, likes: 43}

      assert {:ok, %Post{} = post} = Posts.update_post(post, update_attrs)
      assert post.post == "some updated post"
      assert post.views == 43
      assert post.likes == 43
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = Posts.update_post(post, @invalid_attrs)
      assert post == Posts.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = Posts.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> Posts.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = Posts.change_post(post)
    end
  end
end
