# frozen_string_literal: true

class ValidateParams
  include Interactor

  def call
    if params_valid?
      context.ad_fields = contract.to_h
    else
      context.fail!(errors: { errors: contract.errors.to_h })
    end
  end

  private

  def params_valid?
    contract.success?
  end

  def contract
    @contract ||= NewAdContract.new.call(context.ad_params)
  end
end
