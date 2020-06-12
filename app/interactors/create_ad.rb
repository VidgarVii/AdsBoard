# frozen_string_literal: true

class CreateAd
  include Interactor

  def call
    ad = Ad.create!(ad_params)
    context.ad = { ad: ad }
  rescue StandardError => e
    context.fail!(errors: { errors: e.to_s })
  end

  private

  def ad_params
    context.ad_fields.merge(user_id: context.user_id)
  end

end
