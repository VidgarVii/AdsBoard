# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require_relative '../config/environment'

require 'spec_helper'
require 'rack/test'
require 'rspec'
require 'test_prof/recipes/rspec/let_it_be'
require 'dry/validation/matchers'

module RSpecMixin
  include Rack::Test::Methods

  def app
    AdsBoard
  end
end

Dir[AdsBoard.root.join('spec/support/**/*.rb')].sort.each { |f| require f }

RSpec.configure do |config|
  config.include RSpecMixin
  config.include ClientHelpers, type: :client
end
