defmodule Blog.Post do
  use Blog.Web, :model

  schema "posts" do
    field :title, :string
    field :author, :string
    field :body, :string
  end
end
