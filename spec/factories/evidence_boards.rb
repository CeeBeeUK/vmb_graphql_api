FactoryGirl.define do
  factory :evidence_board do
    position 1
    label 'Board A'
    association :event
  end
end
