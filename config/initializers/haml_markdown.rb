module Haml::Filters::Markdown
  include Haml::Filters::Base
  lazy_require "redcarpet"

  def render(text)
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                          autolink: true,
                                          space_after_headers: true)
    @markdown.render(text)
  end
end
