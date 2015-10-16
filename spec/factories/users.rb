FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Lorem.characters(8) }
    fname { Faker::Name.name }
    lname { Faker::Name.name }
  end
end
