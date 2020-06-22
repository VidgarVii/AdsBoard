# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'puma'
gem 'rake'
gem 'sinatra'
gem 'sinatra-contrib'
gem 'sinatra-i18n'
gem 'faraday'
gem 'faraday_middleware'
gem 'config'
gem 'derailed_benchmarks', group: :development

# DB
gem 'pg'
gem 'sinatra-activerecord'
gem 'tux'                  # Sinatra console

gem 'dry-initializer'
gem 'dry-validation'       # Provided pattern Contact
gem 'interactor', '~> 3.0' # Provided pattern Interactor

group :test do
  gem 'factory_bot'
  gem 'rack-test'
  gem 'rspec'              # Test
  gem 'dry-validation-matchers'
  gem 'test-prof'          # Provided simple methods for init objects
end
