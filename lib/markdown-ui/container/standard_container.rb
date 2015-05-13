# coding: UTF-8

module MarkdownUI
  class StandardContainer
    def initialize(element, content)
      @element = element
      @content = content
    end

    def render
      klass = "ui #{@element} container"
      content = @content.strip

      MarkdownUI::StandardTag.new(content, klass).render
    end
  end
end