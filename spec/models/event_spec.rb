require 'rails_helper'

describe Event, type: :model do
  subject { described_class.new }

  it { is_expected.to respond_to :name }
  it { is_expected.to validate_presence_of(:name) }
end
