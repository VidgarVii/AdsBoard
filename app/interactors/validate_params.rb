# frozen_string_literal: true

class ValidateParams
  include Interactor

  def call
    if params_valid?
      context.ad_fields = contract.to_h
    else
      context.fail!(errors: contract.errors.to_h)
    end
  end

  private

  def params_valid?
    contract.success?
  end

  def make_params
    context.title       = context.ad_params['title']
    context.description = context.ad_params['description']
    context.city        = context.ad_params['city']
    context.user_id     = context.ad_params['user_id']
  end

  def contract
    @contract ||= NewAdContract.new.call(context.ad_params)
  end
end
