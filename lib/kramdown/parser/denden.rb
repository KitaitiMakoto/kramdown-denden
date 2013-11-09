require 'kramdown/parser'

module Kramdown
  module Parser
    module Denden
      def initialize(source, options)
        super
        @span_parsers.unshift :denden_line_break
        @span_parsers.unshift :ruby
      end
    end
  end
end

require 'kramdown/parser/denden/line_break'
require 'kramdown/parser/denden/ruby'
