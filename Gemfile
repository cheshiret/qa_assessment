#source 'https://ruby.taobao.org'
#source 'https://ruby.taobao.org'
#source 'https://rubygems.org'
#source 'https://gems.ruby-china.org/'
source 'http://gems.ruby-china.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc


gem 'pg', '~> 0.18.4'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

group :development do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  #Automation framework used for creating functional tests that simulates how users will interact with your application.
  gem 'capybara', '~> 2.5'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  #Factory Girl allows you create objects that you need in your tests which can include default values.
  gem 'factory_girl_rails', '~> 4.5.0'
end

group :development, :test do

  # Importing bootstrap
  gem "twitter-bootstrap-rails"

  gem 'rspec-rails', '~> 3.4'
end

group :test do
  #Shoulda-Matchers provides one-line matchers to RSpec used in testing Rails functionality which we will see briefly
  gem 'shoulda-matchers', '~> 3.0', require: false
  #Database Cleaner is a set of strategies for cleaning your database in Ruby between test runs.
  gem 'database_cleaner', '~> 1.5'
  #generating random data for your test
  gem 'faker', '~> 1.6.1'
  #a code coverage analysis tool for Ruby.
  gem 'simplecov', :require => false
  #Cucumber helps us both focus on the feature-level and as a high-level integration testing tool.
  gem 'cucumber-rails', require: false
  gem 'selenium-webdriver'
end