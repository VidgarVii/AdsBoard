# frozen_string_literal: true

class GeocodeCity
  include Interactor

  # response
  # {"lat"=>56.1438298, "lon"=>47.2489782} 200
  # {"errors"=>"Coordinates undefined"} 404
  def call
    response = auth_client.geocode(context.ad.city)

    context.coordinates = response.fetch('coordinates') do
      context.fail!(errors: response.fetch('errors'))
    end
  end

  private

  def auth_client
    @auth_service ||= AuthService::Client.new(url: Settings.microservices.geocoder)
  end
end
