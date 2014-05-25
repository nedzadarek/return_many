# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'return_many/version'

Gem::Specification.new do |spec|
  spec.name          = "return_many"
  spec.version       = ReturnMany::VERSION
  spec.authors       = ["Darek Nedza"]
  spec.email         = ["nedzadarek@gmail.com"]
  spec.description   = %q{Returns many values from the method. You can extract it via order or via names.}
  spec.summary       = %q{Returns many values and extract it via hash-like functions.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
