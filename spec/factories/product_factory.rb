FactoryBot.define do
	sequence(:price_in_cents) { |n| "#{n + 50}" }
  
  factory :product do
    name "anything"
    description "anything"
    image_url "https://www.example.com"
    colour "blue"
    price 50
  end
end