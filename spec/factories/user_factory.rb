FactoryBot.define do
	factory :user do
		email "lola@yahoo.fr"
    password "1234567890"
    first_name "Lola"
    last_name "Hello"
    admin false
  end
end
