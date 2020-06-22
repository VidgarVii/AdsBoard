# frozen_string_literal: true

module AuthService
  module Api
    def auth(token)
      response = connection.post('auth') do |request|
        request.headers['AUTHORIZATION'] = "Bearer #{token}"
      end

      response.body.dig('meta', 'user_id')
    end

    def geocode(city)
      response = connection.post('geocode', city: city)

      response.body
    end
  end
end
