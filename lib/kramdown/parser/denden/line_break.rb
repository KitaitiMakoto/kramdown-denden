module Kramdown
  module Parser
    module Denden
      LINE_BREAK = /\n(?=\S)/
      def parse_denden_line_break
        @src.pos += @src.matched_size
        @tree.children << Element.new(:br)
      end
      Kramdown.define_parser :denden_line_break, LINE_BREAK, '\n(?=\S)'
    end
  end
end
