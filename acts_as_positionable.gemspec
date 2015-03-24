# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_positionable/version'

Gem::Specification.new do |spec|
  spec.name          = "acts_as_positionable"
  spec.version       = ActsAsPositionable::VERSION
  spec.authors       = ['Mikhail Grachev']
  spec.email         = ['work@mgrachev.com']

  spec.summary       = %q{Library for the positioning of objects in ActiveRecord.}
  spec.description   = %q{Library for the positioning of objects in ActiveRecord.}
  spec.homepage      = 'https://github.com/mgrachev/acts_as_positionable'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'rails', '>= 3.1'
end
