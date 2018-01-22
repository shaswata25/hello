defmodule LearningPhxWeb.PageController do
  use LearningPhxWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
