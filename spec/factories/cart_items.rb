FactoryGirl.define do
  factory :cart_item do
    product
    user
    quantity { Faker::Number.number(1)}
  end
end
