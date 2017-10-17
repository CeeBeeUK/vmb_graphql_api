FactoryGirl.define do
  factory :evidence_board do
    sequence(:position)
    label Faker::RickAndMorty.unique.location
    association :event
  end
end
