# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dbmapper/version'

Gem::Specification.new do |spec|
  spec.name          = "dbmapper"
  spec.version       = Dbmapper::VERSION
  spec.authors       = ["sh6khan"]
  spec.email         = ["sadman.khan999@gmail.com"]
  spec.summary       = %q{Maps out all the models in your database into a file}
  spec.description   = %q{Mapp out all the models in your database into a file}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
