class CreateAd
  include Interactor


  def call
    ad = Ad.new(
        title: context.title,
        description: context.description,
        city: context.city,
        user_id: context.user_id,
    )
    if ad.save
      context.ad = ad
    else
      context.fail!
    end
  end


end
