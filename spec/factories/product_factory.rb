FactoryGBot.define do

  factory :product do
  	sequence(:id) { |n| "#{n}" }
    sequence(:name) { |n| "product #{n}" }
    sequence(:description) { |n| "product description #{n}" }
    price 50
  end
end