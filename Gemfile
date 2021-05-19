source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'devise', '>= 4.7.2'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.7'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 4.3', '>= 4.3.8'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.1', '>= 5.1.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2', '>= 4.2.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'bootstrap', '~> 4.3.1'
gem 'jbuilder', '~> 2.7', '>= 2.7.0'
gem 'jquery-rails', '>= 4.4.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'simple_form', '>= 5.0.2'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution / get debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '>= 3.33.0'
  gem 'factory_bot_rails', '>= 6.0.0'
  gem 'rspec-rails', '~> 3.9', '>= 3.9.1'
  gem 'rubocop', '~> 0.58.1', require: false
end

group :test do
  gem 'simplecov', '>= 0.16.1', require: false
end

group :development do
  # Access an interactive console on exception pages or by calling 'console'
  # anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.7.0'

  # Spring speeds up development by keeping your application
  # running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring', '>= 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
