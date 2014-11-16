# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shuttle/version'

Gem::Specification.new do |spec|
  spec.name          = "shuttle"
  spec.version       = Shuttle::VERSION
  spec.authors       = ["Hendrik Kleinwaechter"]
  spec.email         = ["hendrik.kleinwaechter@gmail.com"]
  spec.summary       = %q{Command line interface for the Mac Shuttle SSH Client}
  spec.description   = %q{For people who work in the Terminal. This provides a command line interface with all your SSH bookmarks.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "terminal-table", "~> 1.4.5"
  spec.add_runtime_dependency "json", "~> 1.8.1"
  spec.add_runtime_dependency "activesupport", "~> 4.1.7"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3.2"
  spec.add_development_dependency "pry", "~> 0.10.1"

end
