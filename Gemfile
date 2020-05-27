# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'puma'
gem 'rake'
gem 'sinatra'
gem 'sinatra-contrib'
gem 'sinatra-i18n'

# DB
gem 'pg'
gem 'sinatra-activerecord'
gem 'tux'                  # Sinatra console

gem 'dry-validation'       # Provided pattern Contact
gem 'interactor', '~> 3.0' # Provided pattern Interactor
gem 'dry-validation-matchers'
group :test do
  gem 'rspec'              # Test
  gem 'dry-validation-matchers'
  gem 'test-prof'          # Provided simple methods for init objects
end
