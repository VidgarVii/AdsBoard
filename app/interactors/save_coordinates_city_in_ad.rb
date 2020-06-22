# frozen_string_literal: true

class SaveCoordinatesCityInAd
  include Interactor

  def call
    context.ad.update!(context.coordinates)
  end
end
