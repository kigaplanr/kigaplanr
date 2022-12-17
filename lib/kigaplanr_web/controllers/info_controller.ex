defmodule KigaplanrWeb.InfoController do
  use KigaplanrWeb, :controller

  def info(conn, _params) do
    render(conn, "info.html")
  end
end
