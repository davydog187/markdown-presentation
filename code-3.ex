defmodule Blog.Web.PostView do
  use Blog.Web, :view

  alias Blog.Markdown

  def render_markdown(binary) do
    Markdown.to_html(binary)
  end
end
