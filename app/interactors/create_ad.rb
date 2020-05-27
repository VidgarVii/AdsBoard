# frozen_string_literal: true

class CreateAd
  include Interactor

  def call
    ad = Ad.create!(context.ad_fields)
    context.ad = ad
  rescue StandardError => e
    context.fail!(errors: { errors: e.to_s })
  end
end
