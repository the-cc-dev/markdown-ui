# coding: UTF-8

module MarkdownUI
  module Content
    class FormBlock
      def initialize(element, content)
        @element = element
        @content = content
      end

      def render
        klass = "ui #{@element} form"
        content = @content.strip

        MarkdownUI::StandardTag.new(content, klass).render
      end
    end
  end
end