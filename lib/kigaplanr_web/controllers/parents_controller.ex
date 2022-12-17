defmodule KigaplanrWeb.ParentsController do
  use KigaplanrWeb, :controller

  def index(conn, _params) do
    render(conn, "parents.html")
  end

  def create(conn, _params) do
    if conn.params["password"] == "admin" do
      conn
      |> put_flash(:info, "Welcome!")
      |> redirect(to: "/")
    else
      conn
      |> put_flash(:error, "Wrong password")
      |> redirect(to: "/parents")
    end
  end
end
