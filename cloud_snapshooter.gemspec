# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cloud_snapshooter/version'

Gem::Specification.new do |spec|
  spec.name          = "cloud_snapshooter"
  spec.version       = CloudSnapshooter::VERSION
  spec.authors       = ["Kota Kunishima"]
  spec.email         = ["kunishima@feedforce.jp"]
  spec.summary       = %q{Take cloud snapshot}
  spec.description   = %q{Take cloud snapshot}
  spec.homepage      = "https://github.com/Lorentzca/cloud_snapshooter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency 'aws-sdk'
end
