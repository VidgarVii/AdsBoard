# frozen_string_literal: true

class Authentication
  include Interactor
  AUTH_TOKEN = /\ABearer (?<token>.+)\z/

  def call
    user_id = auth_client.auth(matched_token)

    if user_id
      context.user_id = user_id
    else
      context.fail!(errors: :unauthorized)
    end
  end

  private

  def matched_token
    result = context.auth_token&.match(AUTH_TOKEN)
    return if result.blank?

    result[:token]
  end

  def auth_client
    @auth_service ||= AuthService::Client.new(url: Settings.microservices.auth)
  end
end
