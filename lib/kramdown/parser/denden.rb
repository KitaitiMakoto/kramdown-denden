require 'kramdown/parser'

module Kramdown
  module Parser
    module Denden
      def initialize(source, options)
        super
        @span_parsers.unshift :ruby
      end
    end
  end
end

require 'kramdown/parser/denden/ruby'
