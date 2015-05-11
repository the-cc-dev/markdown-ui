module MarkdownUI
  class Segment
    def initialize(element, content)
      @mode = OpenStruct.new(
        :segment?     => !(element =~ /segment/i).nil?,
        :horizontal?  => !(element =~ /horizontal/i).nil?,
        :vertical?    => !(element =~ /vertical/i).nil?,
        :stacked?     => !(element =~ /stacked/i).nil?,
        :piled?       => !(element =~ /piled/i).nil?
      )
      @element = element
      @content = content
    end

    def render
      if @mode.segment?
        if @element.length == "segment".length
          MarkdownUI::StandardSegment.new(@element, @content).render
        elsif @mode.horizontal?
          MarkdownUI::HorizontalSegment.new(@element, @content).render
        elsif @mode.vertical?
          MarkdownUI::VerticalSegment.new(@element, @content).render
        elsif @mode.stacked?
          MarkdownUI::StackedSegment.new(@element, @content).render
        elsif @mode.piled?
          MarkdownUI::PiledSegment.new(@element, @content).render
        else
          MarkdownUI::CustomSegment.new(@element, @content).render
        end
      end
    end

  end
end