source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'devise', '~> 4.7.1'
gem 'devise-jwt', '~> 0.6.0'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Authorization
gem 'pundit', '~> 2.1.0'

# Handle Api Versions
gem 'versionist', '~> 2.0.1'

# Handle templates
gem 'slim', '~> 4.0.1'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  gem 'dotenv-rails', '~> 2.7.5'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  gem 'rspec-rails', '4.0.0.beta3'

  gem 'rubocop', '~> 0.75.1'
  gem 'rubocop-performance', '~> 1.5.0'
  gem 'rubocop-rails', '~> 2.3.2'
  gem 'rubocop-rspec', '~> 1.36.0'

  gem 'brakeman', '~> 4.7.0'
  gem 'database_cleaner', '~> 1.7.0'
  gem 'factory_bot_rails', '~> 5.1.1'
  gem 'faker', '~> 2.6.0'
  gem 'shoulda-matchers', '~> 4.1.2'
  gem 'simplecov', '~> 0.17.1'
  gem 'timecop', '~> 0.9.1'
  gem 'webmock', '~> 3.7.6'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]