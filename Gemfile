ruby '2.2.2'

source 'https://rubygems.org'

gem 'rails', '>= 4.2.0'

gem 'pg'

spree_branch = '3-0-stable'

gem 'spree', github: 'spree/spree', branch: spree_branch
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: spree_branch
gem 'scrypt', '~> 2.0.2'

# templates
gem 'slim'

# server
gem 'unicorn'
gem 'foreman'

# frontend
gem 'sass-rails', '~> 4.0.2'
gem 'coffee-rails'
gem 'therubyracer', :platforms => :ruby
gem 'uglifier'

group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'factory_girl_rails'
  gem 'mocha', :require => false
  gem 'simplecov', :require => false
  gem 'faker'
  gem 'vcr'
  gem 'webmock'
end

