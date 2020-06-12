# frozen_string_literal: true

class AdsBoard < Application
  namespace '/api/v1' do
    get '/ads' do
      content_type :json

      Ad.all.to_json
    end

    post '/ads' do
      content_type :json

      result = RecordingAd.call(
          auth_token: request.env['HTTP_AUTHORIZATION'],
          ad_params:  JSON.parse(request.body.read)
      )

      if result.success?
        result.ad.to_json
      else
        error 400, result.errors.to_json
      end
    end
  end
end
