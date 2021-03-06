# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secret_console/version'

Gem::Specification.new do |spec|
  spec.name          = "secret_console"
  spec.version       = SecretConsole::VERSION
  spec.authors       = ["adorechic"]
  spec.email         = ["adorechic@gmail.com"]

  spec.summary       = %q{Secret console}
  spec.description   = %q{Secret console}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_dependency "sinatra"
  spec.add_dependency "haml"
  spec.add_dependency "rcredstash"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
