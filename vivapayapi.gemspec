# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vivapayapi/version'

Gem::Specification.new do |spec|
  spec.name          = "vivapayapi"
  spec.version       = Vivapayapi::VERSION
  spec.authors       = ["Apostolis Economou"]
  spec.email         = ["apostolis.economou@gmail.com"]
  spec.summary       = "Wrapper for VivaPayments Pay with VivaWallet solution.Work in progress."
  spec.homepage      = "http://github.com/apoeco/vivapayapi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "httparty", "0.13.3"
end
