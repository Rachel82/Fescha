FactoryBot.define do
  factory :user do
  	email "example@yahoo.fr"
    password "hiya23456"
    first_name "Lola"
    last_name "Hello"
    admin false
  end
end