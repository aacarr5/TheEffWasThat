FactoryGirl.define do
  factory :user do
    
    email 		{Faker::Internet.email}
    password 	{"Password"}
    zipcode 	{Faker::Address.zip}
    gender  	{%w(male female trans non-binary gender-fluid agender)}
    race 			{%w(black white asian south-asian native-american hispanic)}
    age 			{[*1..100].sample}

    


  end
end
