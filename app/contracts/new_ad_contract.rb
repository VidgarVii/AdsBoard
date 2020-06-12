# frozen_string_literal: true

class NewAdContract < Dry::Validation::Contract
  params do
    required(:title).filled(:string)
    required(:description).filled(:string)
    required(:city).filled(:string)
  end
end
