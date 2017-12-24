FactoryBot.define do
<<<<<<< HEAD
	factory :user do
		email "lola@yahoo.fr"
    password "1234567890"
    first_name "Lola"
    last_name "Hello"
    admin false
  end
end
=======

  sequence :email do |n|
    "person#{n}@example.com"
  end
  
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
>>>>>>> specs
