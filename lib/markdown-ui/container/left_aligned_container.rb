# coding: UTF-8

module MarkdownUI
  class LeftAlignedContainer
    def initialize(element, content)
      @element = element
      @content = content
    end

    def render
      klass = "ui #{@element} left aligned container"
      content = @content.strip

      MarkdownUI::StandardTag.new(content, klass).render
    end
  end
end