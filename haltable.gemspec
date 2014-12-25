# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'haltable/version'

Gem::Specification.new do |spec|
  spec.name          = "haltable"
  spec.version       = Haltable::VERSION
  spec.authors       = ["Guillaume Malette"]
  spec.email         = ["gmalette@gmail.com"]
  spec.summary       = %q{Haltable gem for Ruby}
  spec.description   = %q{Haltable is a gem that allows halting controller actions to simplify the flows.}
  spec.homepage      = "https://github.com/gmalette/haltable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1.0"
end
