defmodule Blog.Post do
  use Blog.Web, :model
  alias Blog.Markdown

  schema “posts” do
    field :title, :string
    field :author, :string
    field :body, Markdown.Ecto # The custom Ecto.Type
  end
end
