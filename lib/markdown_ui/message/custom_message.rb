# coding: UTF-8

module MarkdownUI
  class CustomMessage
    def initialize(element, content, klass = nil)
      @element = element.downcase
      @klass = klass.downcase if klass
      @content = MarkdownUI::Content::Parser.new(content).parse
    end

    def render
      klass = "ui #{@element} #{@klass} message".split(" ")
      "<div class=\"#{klass.uniq.join(" ")}\">#{@content.strip}</div>\n"
    end
  end
end