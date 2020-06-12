# frozen_string_literal: true

describe CreateAd do
  describe '.call' do
    subject { described_class.call(ad_fields: ad_fields, user_id: 101) }

    context 'when valid params' do
      let(:ad_fields) do
        {
          title: 'title',
          description: 'desc',
          city: 'test'
        }
      end

      it { is_expected.to be_a_success }
    end

    context 'when invalid params' do
      let(:ad_fields) do
        {
          title: 'title',
          description: 'desc'
        }
      end

      it { is_expected.not_to be_a_success }
    end
  end
end
