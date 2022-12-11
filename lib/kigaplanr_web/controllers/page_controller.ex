defmodule KigaplanrWeb.PageController do
  use KigaplanrWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
