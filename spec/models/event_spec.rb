require 'spec_helper'

describe Event, type: :model do
  subject { described_class }

  it { is_expected.to respond_to :name }
end