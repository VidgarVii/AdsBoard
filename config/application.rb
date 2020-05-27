# frozen_string_literal: true

class AdsBoard < Sinatra::Base
  register Sinatra::Contrib
  register Sinatra::ActiveRecordExtension

  set :database_file, 'database.yml'
  set :root, Pathname.new(File.expand_path('..', __dir__))
  set :logging, true
  set :server, :puma
  set :locales, AdsBoard.root.join('config', 'locales', 'en.yml')

  register Sinatra::I18n

  namespace '/api/v1' do
    get '/ads' do
      content_type :json

      Ad.all.to_json # TODO: pagin? only user ad?
    end

    post '/ads' do
      content_type :json

      result = RecordingAd.call(ad_params: JSON.parse(request.body.read))

      if result.success?
        result.ad.to_json
      else
        error 400, result.errors.to_json
      end
    end
  end
end
