FactoryGirl.define do
  factory :event do
    name Faker::RickAndMorty.unique.character
  end
end
