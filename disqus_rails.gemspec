$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'disqus_rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'disqus_rails'
  s.version     = DisqusRails::VERSION
  s.authors     = ['Thach Chau']
  s.email       = ['rog.kane@gmail.com']
  s.homepage    = 'http://github.com/chautoni'
  s.summary     = 'Summary of DisqusRails.'
  s.description = 'Description of DisqusRails.'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 3.2.12'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'debugger'
  s.add_development_dependency 'rspec-rails', '~> 2.10.0'
  s.add_development_dependency 'capybara', '~> 2.0.0'
end
