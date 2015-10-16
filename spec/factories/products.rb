FactoryGirl.define do
  factory :product do
    national_id "999"
    name { Faker::Name.name }
    attack { Faker::Number.number(2)}
    defense { Faker::Number.number(2)}
    description { Faker::Lorem.paragraph(1)}
    image_url { Faker::Avatar.image("pokemonimage")}
    price 99.00
  end
end
