defmodule KigaplanrWeb.ParentsController do
  use KigaplanrWeb, :controller

  def index(conn, _params) do
    render(conn, "parents.html")
  end
end
