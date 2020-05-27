class CreateAd
  include Interactor


  def call
    ad = Ad.new(context.ad_fields)

    if ad.save
      context.ad = ad
    else
      context.fail!(ad.errors.messages)
    end
  end
end
