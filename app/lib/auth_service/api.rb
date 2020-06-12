# frozen_string_literal: true

module AuthService
  module Api
    def auth(token)
      response = connection.post('auth') do |request|
        request.headers['AUTHORIZATION'] = "Bearer #{token}"
      end

      response.body.dig('meta', 'user_id')
    end
  end
end
