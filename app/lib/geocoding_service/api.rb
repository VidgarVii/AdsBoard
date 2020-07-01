# frozen_string_literal: true

module GeocodingService
  module Api
    def geocode(city)
      response = connection.post('geocode', city: city)

      response.body
    end
  end
end
