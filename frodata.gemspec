# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'frodata/version'

Gem::Specification.new do |spec|
  spec.name          = 'frodata'
  spec.version       = FrOData::VERSION
  spec.authors       = ['Christoph Wagner', 'James Thompson']
  spec.email         = %w{christoph@wrstudios.com james@plainprograms.com}
  spec.summary       = %q{Simple OData library}
  spec.description   = %q{Provides a simple interface for working with OData V4 APIs.}
  spec.homepage      = 'https://github.com/wrstudios/frodata'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w{lib}

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'faraday',  '~> 0.15'
  spec.add_dependency 'bigdecimal'
  spec.add_dependency 'base64'
  spec.add_dependency 'logger'

  spec.add_development_dependency 'bundler', '>= 2.6'
  spec.add_development_dependency 'rake', '>= 13.2'
  spec.add_development_dependency 'simplecov', '~> 0.15'
  spec.add_development_dependency 'rspec', '~> 3.7'
  spec.add_development_dependency 'retest'
  spec.add_development_dependency 'vcr', '~> 4.0'
  spec.add_development_dependency 'timecop', '~> 0.9'
  spec.add_development_dependency 'equivalent-xml', '~> 0.6'
end
