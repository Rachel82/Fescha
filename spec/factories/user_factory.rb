FactoryBot.define do
	sequence(:email) { |n| "user#{n}@example.com"}
  
  factory :user do
  	email 
    password "hiya23456"
    first_name "Loa"
    last_name "Hlo"
    admin false
  end

  factory :admin, class: User do
  	email
  	password "hiya23356"
    first_name "La"
    last_name "lo"
    admin true
	end
end