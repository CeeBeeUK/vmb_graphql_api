require 'rails_helper'

describe EvidenceBoard, type: :model do
  subject { build :evidence_board }

  it { is_expected.to be_valid }

  it { is_expected.to belong_to :event }
  it { is_expected.to have_many :evidence_items }

  describe 'validation' do
    it { is_expected.to validate_uniqueness_of(:position).ignoring_case_sensitivity.scoped_to(:event_id) }
    it { is_expected.to validate_uniqueness_of(:label).ignoring_case_sensitivity.scoped_to(:event_id) }

    context 'within a single event' do
      subject(:scoped_board) { build :evidence_board, label: 'Board A', event: event_two }

      let(:event_one) { create :event, name: 'Event One' }
      let(:event_two) { create :event, name: 'Event Two' }
      before do
        create :evidence_board, label: 'Board A', event: event_one
      end

      it { is_expected.to be_valid }
    end
  end
end
