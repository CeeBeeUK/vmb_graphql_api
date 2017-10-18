FactoryGirl.define do
  factory :evidence do
    short_description Faker::Lorem.words(2)
    long_description Faker::Lorem.paragraphs(1)
    transcript Faker::Lorem.paragraphs(2)
    association :evidence_board
  end
end