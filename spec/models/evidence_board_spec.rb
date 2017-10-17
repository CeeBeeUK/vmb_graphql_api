require 'rails_helper'

describe EvidenceBoard, type: :model do
  subject { build :evidence_board }

  it { is_expected.to be_valid }
end
