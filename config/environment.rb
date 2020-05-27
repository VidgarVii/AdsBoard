# frozen_string_literal: true

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

Bundler.require

require 'pathname'
require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/contrib'
require 'sinatra/i18n'

require_relative 'application'
require_relative '../app/interactors/validate_params'
require_relative '../app/contracts/new_ad_contract'
require_relative '../app/interactors/create_ad'

Dir[AdsBoard.root.join('app', '**', '*.rb')].sort.each { |f| require f }
