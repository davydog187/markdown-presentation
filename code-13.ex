Phoenix.View.render(
  PearlWeb.PostView,
  "show.html",
  post: %{post | body: %Blog.Markdown{text: post.body}}
)
