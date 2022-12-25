defmodule KigaplanrWeb.TeachersController do
  use KigaplanrWeb, :controller
  alias Kigaplanr.Parents.Generate
  alias Kigaplanr.Parents


  def index(conn, _params) do
    changeset = Generate.changeset(%Generate{}, %{})
    render(conn, "teachers.html", changeset: changeset)
  end

  def generate(conn, %{"generate" => parent_params}) do
    case Parents.generate_parent(parent_params) do
      {:ok, _} ->
        conn
        |> put_flash(:info, "Message Sent!")
        |> redirect(to: Routes.parents_path(conn, :index))
      {:error, %Ecto.Changeset{} = changeset} ->
        conn = put_flash(conn, :error, "Error Sending!")
        render(conn, "index.html", changeset: changeset)
    end
  end

end
