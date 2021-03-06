FactoryBot.define do
  factory :post do
    association :user
    title   { Faker::Book.title }
    rate    { rand(0.5...5.0) }
    content { Faker::Lorem.sentence }
  end
end
