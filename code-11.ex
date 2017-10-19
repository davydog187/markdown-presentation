defmodule Blog.Markdown do
  defstruct text: "", html: nil
  def to_html(%__MODULE__{html: html}) when is_binary(html) do
    html
  end
  def to_html(%__MODULE__{text: text}), do: to_html(text)
  def to_html(binary) when is_binary(binary) do
    Cmark.to_html(binary)
  end
  def to_html(_other), do: ""

  defimpl Phoenix.HTML.Safe do
    def to_iodata(%Blog.Markdown{} = markdown) do
      Blog.Markdown.to_html(markdown)
    end
  end

end
