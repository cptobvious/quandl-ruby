# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quandl/version'

Gem::Specification.new do |spec|
  spec.name          = 'quandl'
  spec.version       = Quandl::VERSION
  spec.authors       = ['Clement Leung', 'Matthew Basset']
  spec.email         = ['dev@quandl.com']

  spec.summary       = 'An ORM interface into the quandl api.'
  spec.description   = 'A ruby implementation of the quandl client to be used as an ORM for quandl\'s restful APIs.'
  spec.homepage      = 'https://github.com/quandl/quandl-ruby'
  spec.license       = 'MIT'

  spec.files = Dir['{bin,lib,git_hooks}/**/*', 'MIT-LICENSE', 'README.md']
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = Dir['test/**/*']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'activesupport', '>= 4.2.3'
  spec.add_runtime_dependency 'rest-client', '~> 1.8.0'
  spec.add_runtime_dependency 'json', '~> 1.8.3'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry-byebug', '~> 3.1.0'
  spec.add_development_dependency 'webmock', '~> 1.21.0'
  spec.add_development_dependency 'factory_girl', '~> 4.5.0'
  spec.add_development_dependency 'rubocopter'
end
