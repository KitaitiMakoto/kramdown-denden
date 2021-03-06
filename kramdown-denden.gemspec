# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kramdown/denden/version'

Gem::Specification.new do |spec|
  spec.name          = "kramdown-denden"
  spec.version       = Kramdown::Denden::VERSION
  spec.authors       = ["KITAITI Makoto"]
  spec.email         = ["KitaitiMakoto@gmail.com"]
  spec.description   = %q{kramdown extension for DenDenMarkdown}
  spec.summary       = %q{This is an extension for kramdown to parse Den-Den Markdown format.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'kramdown'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'test-unit'
  spec.add_development_dependency 'test-unit-notify'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
end
