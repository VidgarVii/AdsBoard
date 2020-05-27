describe 'Application', type: :request do
  describe 'GET api/v1/ads' do
    before { get 'api/v1/ads' }

    it 'when success' do
      expect(last_response).to be_ok
    end
  end

  describe 'POST api/v1/ads' do
    before { post 'api/v1/ads', "{\"test\":\"test\"}" }

    it 'when success' do
      expect(last_response).to be_ok
    end

    it 'when return errors' do
      expect(JSON.parse(last_response.body)).to be_has_key('errors')
    end
  end
end
