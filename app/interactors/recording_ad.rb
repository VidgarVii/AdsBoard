class RecordingAd
  include Interactor::Organizer

  organize ValidateParams, CreateAd
end
