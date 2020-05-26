# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'sinatra'
gem 'sinatra-contrib'
gem 'rake'
gem 'puma'

# DB
gem 'sinatra-activerecord'
gem 'pg'
gem 'tux'                  # Sinatra console

gem 'config'               # Settings
gem 'interactor', '~> 3.0' # Provided pattern Interactor

group :test do
  gem 'rspec'              # Test
  gem 'test-prof'          # Provided simple methods for init objects
end

