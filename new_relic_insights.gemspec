# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'new_relic_insights/version'

Gem::Specification.new do |spec|
  spec.name          = "new_relic_insights"
  spec.version       = NewRelicInsights::VERSION
  spec.authors       = ["Justin Turner"]
  spec.email         = ["justinrayturner@gmail.com"]

  spec.summary       = 'REST Client to interact with New Relic Insights'
  spec.description   = 'REST Client to interact with New Relic Insights'
  spec.homepage      = "https://github.com/web-connect/new_relic_insights"
 
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency 'faraday'
end
