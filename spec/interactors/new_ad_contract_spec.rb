# frozen_string_literal: true

describe NewAdContract, type: :dry_validation do
  it { is_expected.to validate(:title, :required).filled }
  it { is_expected.to validate(:description, :required).filled }
  it { is_expected.to validate(:city, :required).filled }
  it { is_expected.to validate(:user_id, :required).filled(:int) }
end
