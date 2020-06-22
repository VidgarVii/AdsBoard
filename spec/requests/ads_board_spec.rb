# frozen_string_literal: true

describe AdsBoard, type: :request do
  describe 'GET api/v1/ads' do
    before { get 'api/v1/ads' }

    it 'when success' do
      expect(last_response).to be_ok
    end
  end

  describe 'POST api/v1/ads' do
    let(:service_client) { instance_double('Client') }

    before do
      allow(service_client).to receive(:auth).with('valid.token').and_return(1)
      allow(AuthService::Client).to receive(:new).and_return(service_client)
      allow(service_client).to receive(:geocode).with('Che').and_return({ 'coordinates' => { 'lat' => 56, 'lon' => 47 } })

      header 'Authorization', "Bearer #{token}"
    end

    context 'valid params' do
      let(:token) { 'valid.token' }
      before { post 'api/v1/ads', '{"title":"dsf","description":"asd","city":"Che"}' }

      it 'when success' do
        expect(last_response).to be_ok
      end

      it 'when return ad object' do
        expect(JSON.parse(last_response.body)).to be_has_key('ad')
      end
    end

    context 'invalid params' do
      let(:token) { 'valid.token' }

      before { post 'api/v1/ads', '{"test":"test"}' }

      it 'when bad request' do
        expect(last_response.status).to eq 400
      end

      it 'when return errors' do
        expect(JSON.parse(last_response.body)).to be_has_key('errors')
      end
    end
  end
end
