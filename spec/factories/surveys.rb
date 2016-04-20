FactoryGirl.define do 
	GENDERS = ["Non-gender Conforming","Gender-fluid","Trans-Femme","Trans-Masc","Gender-free","Female","Male"]
	RESPONSES = %w(yes no maybe)
	RACES = ["Black", "Asian","Mixed-Race","Latino/Latina", "Native-American","White"]

	factory :survey do
		zipcode 				{ Faker::Address.zip_code }
		gender 					{ GENDERS.sample }
		race					{ RACES.sample }
		age						{ [*14..99].sample }
		email 					{ Faker::Internet.email }
		faced_microaggressions  { RESPONSES.sample }
		seen_microaggressions 	{ RESPONSES.sample }
	end
end