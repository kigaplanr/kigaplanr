defmodule KigaplanrWeb.TeachersController do
  use KigaplanrWeb, :controller
  alias Kigaplanr.Parents

  def index(conn, _params) do
    render(conn, "teachers.html")
  end

  def new(conn, _params) do
    changeset = Parents.changeset(%Parents{})
    render conn, "new.html", changeset: changeset
  end

end
