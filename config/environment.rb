ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

Bundler.require

require 'pathname'
require "sinatra/activerecord"
require 'sinatra/base'
require 'sinatra/contrib'

require_relative 'application'

Dir[AdsBoard.root.join('app', '**', '*.rb')].each { |f| require f }
