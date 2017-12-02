defmodule TodoApp.ErrorViewTest do
  use TodoApp.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  @moduletag :views_test

  test "renders 404.json" do
    assert render(TodoApp.ErrorView, "404.json", []) ==
           %{errors: %{detail: "Page not found"}}
  end

  test "render 500.json" do
    assert render(TodoApp.ErrorView, "500.json", []) ==
           %{errors: %{detail: "Internal server error"}}
  end

  test "render any other" do
    assert render(TodoApp.ErrorView, "505.json", []) ==
           %{errors: %{detail: "Internal server error"}}
  end
end
