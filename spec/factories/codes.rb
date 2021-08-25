FactoryBot.define do
  factory :code do
    code_title { Faker::Lorem.sentence }
    brand_name { Faker::Lorem.sentence }
    message { Faker::Lorem.sentence }
    user { Faker::Name.user }
    association :user

    after(:build) do |code|
      code.image.attach(io: File.open('public/images/sample1.png'), filename: 'sample1.png')
    end
  end
end