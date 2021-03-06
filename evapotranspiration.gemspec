# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'evapotranspiration/version'

Gem::Specification.new do |spec|
  spec.name          = "evapotranspiration"
  spec.version       = Evapotranspiration::VERSION
  spec.authors       = ["Bryce Johnston"]
  spec.email         = ["bryce@agdeveloper.com"]
  spec.summary       = %q{Ruby library for calculating reference crop evapotranspiration (ETo)}
  spec.description   = %q{Ruby library for calculating reference crop evapotranspiration (ETo), also referred to as potential evapotranspiration (PET), using the FAO-56 Penman-Monteith method.}
  spec.homepage      = "https://github.com/beaorn/evapotranspiration"
  spec.license       = "BSD 3-Clause"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
