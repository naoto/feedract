# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'feedract/version'

Gem::Specification.new do |spec|
  spec.name          = "feedract"
  spec.version       = Feedract::VERSION
  spec.authors       = ["Naoto SHINGAKI"]
  spec.email         = ["nao.sora+github@gmail.com"]
  spec.summary       = %q{Feedract is Feed extract library}
  spec.description   = %q{Feedract is Feed extract library}
  spec.homepage      = "http://github.com/naoto/feedract"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'nokogiri'
end
