require'kramdown/converter'
require'kramdown/converter/html'

module Kramdown
  module Converter
    class Html < Base
      alias :convert_ruby :convert_em
      alias :convert_rt :convert_em
    end
  end
end
