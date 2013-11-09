require 'kramdown/parser/denden'
require 'kramdown/parser/markdown'

module Kramdown
  module Parser
    class DendenMarkdown < Markdown
      include Denden
    end
  end
end
