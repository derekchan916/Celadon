FactoryGirl.define do
  factory :ordered_item do
    product
    user
    quantity { Faker::Number.number(1)}
  end
end
