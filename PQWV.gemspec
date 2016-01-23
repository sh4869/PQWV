# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'PQWV/version'

Gem::Specification.new do |spec|
  spec.name          = "PQWV"
  spec.version       = PQWV::VERSION
  spec.authors       = ["sh4869"]
  spec.email         = ["nobuk4869@gmail.com"]

  spec.summary       = %q{A Tool to view web pages on pull request brach}
  spec.description   = %q{A Tool to view web pages on pull request brach}
  spec.homepage      = "https://github.com/sh4869/pqwv"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = 'pqwv'
  spec.require_paths = ["lib"]

  spec.add_dependency "github_api","0.13.1"
  spec.add_dependency "nokogiri","1.6.7"
  spec.add_dependency "git","1.2.9.1"
  spec.add_dependency "launchy","2.4.3"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
