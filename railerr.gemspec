Gem::Specification.new do |s|
  s.name        = 'railerr'
  s.version     = '0.0.1'
  s.summary     = 'RESTful API error handler'
  s.description = 'A declarative, fire and forget way to handle errors in a REST API'
  s.authors     = ['Nexus']
  s.email       = 'nexus@xneelo.com'
  s.files = Dir.glob('{lib,config}/**/*')
  s.license = 'MIT'

  ## Ruby ##
  s.required_ruby_version = '>= 2.7.6'

  ## Runtime
  s.add_dependency 'bundler'

  s.add_development_dependency 'byebug', '~> 11.1'
  s.add_development_dependency 'rspec', '~> 3.11'
  s.add_development_dependency 'simplecov', '~> 0.21'
  s.add_development_dependency 'simplecov-console', '~> 0.9'
end
