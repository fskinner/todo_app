defmodule TodoApp.Repo do
  use Ecto.Repo, otp_app: :todo_app
  use Scrivener, page_size: 1
end
