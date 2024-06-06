defmodule Crapper.Repo do
  use Ecto.Repo,
    otp_app: :crapper,
    adapter: Ecto.Adapters.SQLite3
end
