require 'simplecov'
SimpleCov.start do
  add_filter '/test|vendor/'
end
require 'test-unit'
require 'test/unit/notify'
require 'kramdown'
require 'kramdown/denden'
require 'pathname'
require 'coveralls'
Coveralls.wear!
