# frozen_string_literal: true

class AdsBoard < Sinatra::Base
  register Sinatra::Contrib
  register Sinatra::ActiveRecordExtension

  set :database_file, 'database.yml'
  set :root, Pathname.new(File.expand_path('..', __dir__))
  set :logging, true
  set :server, :puma

  namespace '/api/v1' do
    get '/' do
      'Hello world!'
    end

    post '/ads' do
      1
    end
  end
end
