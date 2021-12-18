defmodule ArcadeWeb.InviteLive do
  use ArcadeWeb, :live_view
  alias Arcade.Invite
  alias Arcade.Invite.Recipient

  def mount(_params, _session, socket) do
    {:ok,
      socket
      |> assign_recipient()
      |> assign_changeset()}
  end


  def assign_recipient(socket) do
    socket
    |> assign(:recipient, %Recipient{})
  end


  def assign_changeset(%{assigns: %{recipient: recipient}} = socket) do
    socket
    |> assign(:changeset, Invite.change_invitation(recipient))
  end
end
