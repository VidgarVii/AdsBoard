# frozen_string_literal: true

describe GeocodeCity do
  describe '.call' do
    subject { described_class.call(ad: ad) }

    let(:service_client) { instance_double('Client') }

    context 'when city defined' do
      let_it_be(:ad) { create :ad, city: 'Чебоксары' }

      before do
        allow(service_client).to receive(:geocode).with('Чебоксары').and_return({ 'coordinates' => { 'lat' => 56, 'lon' => 47 } })
        allow(GeocodingService::Client).to receive(:new).and_return(service_client)
      end

      it { is_expected.to be_success }
      it { expect(subject.coordinates).to be_present }
    end

    context 'when city undefined' do
      let_it_be(:ad) { create :ad }

      before do
        allow(service_client).to receive(:geocode).with(ad.city).and_return({ 'errors' => 'Some error' })
        allow(GeocodingService::Client).to receive(:new).and_return(service_client)
      end

      it { is_expected.not_to be_a_success }
      it { expect(subject.errors).to be_present }
    end
  end
end
