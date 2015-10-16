FactoryGirl.define do
  factory :review do
    author
    product
    star_rating { rand(6)}
    title { Faker::Lorem.sentence(1)}
    body { Faker::Lorem.paragraph(1)}
  end
end
