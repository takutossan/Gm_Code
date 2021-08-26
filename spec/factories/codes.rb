FactoryBot.define do
  factory :code do
    code_title { "Alice" }
    brand_name { "Alice" }
    message { Faker::Lorem.sentence }
    association :user

    after(:build) do |code|
      code.image.attach(io: File.open('public/images/sample1.png'), filename: 'sample1.png')
    end
  end
end