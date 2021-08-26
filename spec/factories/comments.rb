FactoryBot.define do
  factory :comment do
    text { "Alice" }
    association :code
    association :user
  end
end
