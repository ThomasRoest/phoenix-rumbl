defmodule Rumbl.Repo.Migrations.CreateUser do
  use Ecto.Migration

  #mix ecto.gen.migration create_user
  
  def change do
    create table(:users) do
      add :name, :string
      add :username, :string, null: false
      add :password_hash, :string

      timestamps
    end

    create unique_index(:users, [:username])
  end
end


# mix ecto.migrate