defmodule Flicks.Repo do
  use Ecto.Repo,
    otp_app: :flicks,
    adapter: Ecto.Adapters.Postgres
end
