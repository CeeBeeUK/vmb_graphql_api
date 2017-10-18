require 'rails_helper'

describe EvidenceItem, type: :model do
  subject { build :evidence_item }

  it { is_expected.to be_valid }

  it { is_expected.to validate_presence_of(:short_description) }
  it { is_expected.to validate_uniqueness_of(:short_description).ignoring_case_sensitivity.scoped_to(:evidence_board_id) }

end
