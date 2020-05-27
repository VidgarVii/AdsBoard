# frozen_string_literal: true

describe CreateAd do
  describe '.call' do
    subject { described_class.call(ad_fields: ad_fields) }

    context 'when succeeds' do
      let(:ad_fields) do
        {
          title: 'title',
          description: 'desc',
          city: 'test',
          user_id: 1
        }
      end

      it { is_expected.to be_a_success }
    end

    context 'when fail' do
      let(:ad_fields) do
        {
          title: 'title',
          description: 'desc',
          city: 'test'
        }
      end

      it { is_expected.not_to be_a_success }
    end
  end
end
