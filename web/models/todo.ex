defmodule TodoApp.Todo do
  use TodoApp.Web, :model

  schema "todos" do
    field :description, :string
    field :complete, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:description, :complete])
    |> validate_required([:description, :complete])
    |> validate_length(:description, min: 2, max: 60)
  end
end
