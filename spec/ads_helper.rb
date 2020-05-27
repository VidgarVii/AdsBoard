# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require_relative '../config/environment'

require 'spec_helper'
require 'rack/test'
require 'test_prof/recipes/rspec/let_it_be'
require "dry/validation/matchers"

RSpec.describe 'The HelloWorld App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  # it "says hello" do
  #   get '/'
  #   expect(last_response).to be_ok
  #   expect(last_response.body).to eq('Hello World')
  # end
end
