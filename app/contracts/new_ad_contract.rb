class NewAdContract < Dry::Validation::Contract
  params do
    required(:title).filled(:string)
    required(:description).filled(:string)
    required(:city).filled(:string)
    required(:user_id).filled(:integer)
  end
end
