source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'rails', '~> 6.1.4'
gem 'mysql2'
gem 'puma'
gem 'sass-rails'
gem 'webpacker'
gem 'jbuilder'
# gem 'redis', '~> 4.0'
gem 'bcrypt'
# gem 'image_processing', '~> 1.2'
gem 'bootsnap', require: false

gem 'foreman'
gem 'dotenv-rails'
gem 'rack-cors'
gem 'global'
gem 'slim-rails'
gem 'sentry-ruby'
gem 'kaminari'

group :development, :test do
  gem 'brakeman', require: false
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'slim_lint', require: false
end

group :development do
  gem 'web-console'
  gem 'rack-mini-profiler'
  gem 'listen'
  gem 'spring'
  gem 'bullet'
end

group :test do
  gem 'simplecov', require: false
  gem 'danger'
  gem 'danger-todoist'
  gem 'danger-lgtm'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
