defmodule ProgrammingPhoenixWeb.VideoViewTest do
  use ProgrammingPhoenixWeb.ConnCase, async: true
  import Phoenix.View

  test "renders index.html", %{conn: conn} do
    videos = [
      %ProgrammingPhoenix.Multimedia.Video{id: "1", title: "dogs"},
      %ProgrammingPhoenix.Multimedia.Video{id: "2", title: "cats"}
    ]

    content = render_to_string(
      ProgrammingPhoenixWeb.VideoView,
      "index.html",
      conn: conn,
      videos: videos)

    assert String.contains?(content, "Listing Videos")

    for video <- videos do
      assert String.contains?(content, video.title)
    end
  end

  test "renders new.html", %{conn: conn} do
    owner = %ProgrammingPhoenix.Accounts.User{}
    changeset = ProgrammingPhoenix.Multimedia.change_video(%ProgrammingPhoenix.Multimedia.Video{})
    categories = [%ProgrammingPhoenix.Multimedia.Category{id: 123, name: "cats"}]

    content = render_to_string(
      ProgrammingPhoenixWeb.VideoView,
      "new.html",
      conn: conn,
      changeset: changeset,
      categories: categories)

    assert String.contains?(content, "New Video")
  end
end
