defmodule Kigaplanr.Repo do
  use Ecto.Repo,
    otp_app: :kigaplanr,
    adapter: Ecto.Adapters.Postgres
end
