FactoryGirl.define do
  factory :microaggression do

  	user {FactoryGirl.create(:user)}
  	location 				{["Work", "Home", "Socializing"].sample }
  	description 		{"It really sucked" }
  	aggressor 			{%w(boss co-worker patron).sample }
    severity				{[*1..5].sample }

  end
end
