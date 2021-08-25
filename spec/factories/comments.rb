FactoryBot.define do
  factory :comment do
    comment { Faker::Lorem.sentence }
    association :code
  end
end
