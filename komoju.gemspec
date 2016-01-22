# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'komoju/version'

Gem::Specification.new do |spec|
  spec.name          = "komoju"
  spec.version       = Komoju::VERSION
  spec.authors       = ["Richard Ramsden"]
  spec.email         = ["richard@rramsden.ca"]
  spec.summary       = %q{Komoju Ruby Bindings}
  spec.description   = %q{These are the ruby bindings for the Komoju API}
  spec.homepage      = "https://komoju.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0") + Dir.glob("vendor/**/**.rb")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "heroics"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'minitest', '4.7.5'
  spec.add_development_dependency 'turn'
end
