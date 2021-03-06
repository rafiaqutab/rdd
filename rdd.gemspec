# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rdd/version'

Gem::Specification.new do |spec|
  spec.name          = "rdd"
  spec.version       = Rdd::VERSION
  spec.authors       = ["Rafia Qutab"]
  spec.email         = ["rafiaqutabatx@gmail.com"]

  spec.summary       = %q{Resume Driven Development Challange}
  spec.description   = %q{A command-line tool to find popular repos using the Github Archive API}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "bigquery"

end
