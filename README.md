# Crapper

Just like twitter only crapper...

Playing with elixir and phoenix for fun and profit.

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Changelog:

```bash
# Create project
mix phx.new crapper --database sqlite3
cd crapper
mix ecto.create

# Add auth
mix phx.gen.auth Accounts User users
mix deps.get
mix ecto.migrate

# Add posts
mix phx.gen.html Posts Post posts user_id:references:users post:string views:integer likes:integer
mix ecto.migrate
# Modify router.ex to include /posts

```
