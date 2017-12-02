defmodule TodoApp.TodoTest do
  use TodoApp.ModelCase

  alias TodoApp.Todo

  @moduletag :models_test

  @valid_attrs %{description: "some description"}
  @long_attrs %{description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"}
  @short_attrs %{description: "a"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Todo.changeset(%Todo{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with description attribute too long" do
    changeset = Todo.changeset(%Todo{}, @long_attrs)
    refute changeset.valid?
  end

  test "changeset with description attribute too short" do
    changeset = Todo.changeset(%Todo{}, @short_attrs)
    refute changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Todo.changeset(%Todo{}, @invalid_attrs)
    refute changeset.valid?
  end
end
