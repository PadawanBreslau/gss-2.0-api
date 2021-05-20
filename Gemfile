source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'figaro'
gem 'google-cloud-storage', '~> 1.11', require: false
gem 'image_processing', '~> 1.2'
gem 'jsonapi_parameters'
gem 'jsonapi-serializer'
gem 'kaminari'
gem 'pg', '0.20.0'
gem 'puma', '~> 4.3'
gem 'pundit'
gem 'rack-cors', '~> 1.0'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'rollbar'
gem 'sassc-rails'
gem 'trestle'
gem 'trestle-active_storage'
gem 'trestle-auth'
gem 'trestle-search'

group :development, :test do
  gem 'bullet'
  gem 'letter_opener', '1.4.1'
  gem 'pry-nav'
  gem 'pry-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-benchmark'
  gem 'rspec-rails'
  gem 'simplecov'
  gem 'timecop'
end

group :development do
  gem 'listen'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end
