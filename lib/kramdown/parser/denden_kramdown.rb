require 'kramdown/parser/denden'
require 'kramdown/parser/kramdown'

module Kramdown
  module Parser
    class DendenKramdown < Kramdown
      include Denden
    end
  end
end
