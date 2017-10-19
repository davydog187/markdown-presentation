iex(2)> Phoenix.View.render(PearlWeb.PostView, "show.html", post: post)
{:safe,
 [[[[[[["" | "<article>\n  <header>\n    <h1>"] | "First post"] |
      "</h1>\n    <address>"] | "Dave"] |
    "</address>\n  </header>\n  <section>\n"] |
   "<p><em>Hello</em> <strong>World</strong>!</p>\n"] |
  "  </section>\n</article>\n"]}
