require_relative '../../converter/html'
module Kramdown
  module Parser
    module Denden
      RUBY_START = /{([^}|]+)(?<!\\)\|([^}]+)}/

      def parse_ruby
        ruby = Element.new(:ruby)
        rb = @src[1]
        rts = @src[2].split('|')
        @src.pos += (rb.bytesize + 2) # +2 for "{" and "|"
        if rb.length == rts.length
          rb.each_char.with_index do |char, index|
            append_ruby_children ruby, char, /\||}/
          end
        else
          append_ruby_children ruby, rb, /}/
        end
        @tree.children << ruby
      end
      Kramdown.define_parser :ruby, RUBY_START, '{'

      private

      def append_ruby_children(ruby, rb, stop_re)
        ruby.children << Element.new(:text, rb)
        rt = Element.new(:rt)
        parse_spans rt, stop_re
        @src.pos += 1 # +1 for "|" or "}"
        ruby.children << rt
      end
    end
  end
end
