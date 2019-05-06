source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '1.1.4'
# Use Puma as the app server
gem 'puma', '3.12.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.8.0'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '1.4.4', require: false
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', '1.0.3'
# for env variables
gem 'figaro', '1.1.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '11.0.1', platforms: [:mri, :mingw, :x64_mingw]
  # For rspec testing
  gem 'rspec-rails', '3.8.2'
  gem 'factory_bot_rails', '5.0.2'
end

group :development do
  gem 'listen', '3.1.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
  # get emails in the browser for dev
  gem 'letter_opener', '1.7.0'
  gem 'spring-commands-rspec', '1.0.4'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '1.2019.1', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
