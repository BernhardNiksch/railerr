# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'railerr/version'

Gem::Specification.new do |s|
  s.name = 'railerr'
  s.version = Railerr::VERSION
  s.summary = 'RESTful API error handler'
  s.description = 'A declarative, fire and forget way to handle errors in a REST API'
  s.authors = ['Bernhard Niksch']
  s.homepage = 'https://github.com/BernhardNiksch/railerr'
  s.files = Dir.glob('{lib,config}/**/*')
  s.license = 'MIT'

  ## Ruby ##
  s.required_ruby_version = '>= 2.7.6'

  s.add_development_dependency 'bundler', '~> 2.0'
  s.add_development_dependency 'byebug', '~> 11.1'
  s.add_development_dependency 'rspec', '~> 3.11'
  s.add_development_dependency 'simplecov', '~> 0.21'
  s.add_development_dependency 'simplecov-console', '~> 0.9'
end
