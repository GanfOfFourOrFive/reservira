source 'https://rubygems.org'
ruby '2.1.1'
gem 'rails', '4.1.1'

gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'bootstrap-sass'
gem 'devise'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'pundit'
gem 'simple_form'
gem 'therubyracer', :platform=>:ruby

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
  gem 'debugger'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails', '>= 3.0.0.beta2'
  gem 'sqlite3'
  gem 'spring'
end
group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'simplecov'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'faker'
  gem 'launchy'
  gem 'selenium-webdriver'
end
