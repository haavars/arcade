defmodule Arcade.Invite.Recipient do
  defstruct [:name, :email]
  @types %{game_name: :string, email: :string}

  alias Arcade.Invite.Recipient
  import Ecto.Changeset

  def changeset(%Recipient{} = invitation, attrs) do
    {invitation, @types}
    |> cast(attrs, Map.keys(@types))
    |> validate_required([:game_name, :email])
    |> validate_format(:email, ~r/@/)
  end
end
