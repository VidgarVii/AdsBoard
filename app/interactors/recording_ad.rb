# frozen_string_literal: true

class RecordingAd
  include Interactor::Organizer

  organize Authentication,
    ValidateParams,
    CreateAd,
    GeocodeCity,
    SaveCoordinatesCityInAd
end
