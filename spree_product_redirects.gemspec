# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_product_redirects'
  s.version     = '0.1.2'
  s.summary     = 'Spree extension to set up a 301 redirect when a product permalink is changed'
  s.description = 'Spree extension to record old permalinks for products when they are changed, and issues a 301 redirect if necessary'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'David Crees'
  # s.email     = 'you@example.com'
  s.homepage  = 'http://github.com/davidcrees/spree_product_redirects'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.0.10'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
