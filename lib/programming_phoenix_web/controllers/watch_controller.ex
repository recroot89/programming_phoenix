defmodule ProgrammingPhoenixWeb.WatchController do
  use ProgrammingPhoenixWeb, :controller

  alias ProgrammingPhoenix.Multimedia

  def show(conn, %{"id" => id}) do
    video = Multimedia.get_video!(id)
    render(conn, "show.html", video: video)
  end
end
