# frozen_string_literal: true

class RecordingAd
  include Interactor::Organizer

  organize ValidateParams, CreateAd
end
