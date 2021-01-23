defmodule Flicks.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add(:username, :string)
      add(:email, :string)
      add(:unique_identifier, :string)

      timestamps()
    end
  end
end
