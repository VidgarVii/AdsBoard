# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'sinatra'
gem 'sinatra-contrib'
gem 'sinatra-i18n'
gem 'rake'
gem 'puma'

# DB
gem 'sinatra-activerecord'
gem 'pg'
gem 'tux'                  # Sinatra console

gem 'interactor', '~> 3.0' # Provided pattern Interactor
gem 'dry-validation'       # Provided pattern Contact

group :test do
  gem 'rspec'              # Test
  gem 'test-prof'          # Provided simple methods for init objects
end

