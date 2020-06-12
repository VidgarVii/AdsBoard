# frozen_string_literal: true

describe Authentication do
  describe '.call' do
    subject { described_class.call(auth_token: token) }

    let(:auth_service_client) { instance_double('Client') }

    before do
      allow(auth_service_client).to receive(:auth).with('valid.token').and_return(user_id)
      allow(AuthService::Client).to receive(:new).and_return(auth_service_client)
    end

    context 'when auth client' do
      let(:user_id) { 911 }
      let(:token) { 'Bearer valid.token' }

      it { is_expected.to be_a_success }
    end

    context 'when not auth client' do
      let(:user_id) { nil }
      let(:token) { 'Bearer valid.token' }

      it { is_expected.not_to be_a_success }
    end
  end
end
