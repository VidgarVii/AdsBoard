# frozen_string_literal: true

describe AuthService::Client, type: :client do
  subject(:client) { described_class.new(connection: connection) }

  before do
    stubs.post('auth') { [status, headers, body.to_json] }
  end

  let(:status) { 200 }
  let(:headers) { { 'Content-Type' => 'application/json' } }
  let(:body) { {} }

  describe '#auth' do
    subject { client.auth('token') }

    context 'when valid_token' do
      let(:user_id) { 101 }
      let(:body) { { 'meta' => { 'user_id' => user_id } } }

      it 'returns user_id' do
        is_expected.to eq user_id
      end
    end

    context 'when invalid_token' do
      let(:user_id) { 403 }

      it 'returns a nil value' do
        is_expected.to be_nil
      end
    end
  end
end
