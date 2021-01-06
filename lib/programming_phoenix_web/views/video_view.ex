defmodule ProgrammingPhoenixWeb.VideoView do
  use ProgrammingPhoenixWeb, :view

  def category_select_options(categories) do
    for category <- categories, do: {category.name, category.id}
  end
end
