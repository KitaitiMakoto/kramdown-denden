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
            ruby.children << Element.new(:text, char)
            rt = Element.new(:rt)
            parse_spans rt, /\||}/
            @src.pos += 1 # +1 for "|" or "}"
            ruby.children << rt
          end
        else
          ruby.children << Element.new(:text, rb)
          rt = Element.new(:rt)
          parse_spans rt, /}/
          @src.pos += 1 # +1 for "}"
          ruby.children << rt
        end
        @tree.children << ruby
      end
      Kramdown.define_parser :ruby, RUBY_START, '{'
    end
  end
end
