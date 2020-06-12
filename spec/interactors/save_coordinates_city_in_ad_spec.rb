# frozen_string_literal: true

describe SaveCoordinatesCityInAd do
  subject { described_class.call(ad: ad, coordinates: { 'lat' => 56, 'lon' => 47 }) }

  describe '.call' do
    let(:ad) { create :ad }

    it { is_expected.to be_a_success }
    it { expect { subject }.to change(ad, :lat) }
    it { expect { subject }.to change(ad, :lon) }
  end
end
