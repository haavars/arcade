defmodule ArcadeWeb.InviteLive do
  use ArcadeWeb, :live_view

  alias Arcade.Invite

  alias Arcade.Invite.Recipient

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
