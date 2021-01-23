defmodule Flicks.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :unique_identifier, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :email, :unique_identifier])
    |> validate_required([:username, :email, :unique_identifier])
  end
end
