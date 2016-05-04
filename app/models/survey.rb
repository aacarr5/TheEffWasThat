class Survey < ActiveRecord::Base

	GENDERS = ["'Other',Non-gender Conforming","Gender-fluid","Agender","Trans-Femme","Trans-Masc","Female","Male",]
	RESPONSES = %w(Yes No Maybe)
	RACES = ['Other',"Black", "Asian","Indian","Mixed-Race","Latino/Latina", "Native-American","White"]
	INDUSTRIES = %w(Real-estate Healthcare/Medicine Law Technology Marketing/Advertising Finance Non-profit Retail Food-industry Government Transportation Education Agriculture Mining Construction Arts/Entertainment Social-Services Other)

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

	validates :zipcode, :gender, :race, :age, :faced_microaggressions, :seen_microaggressions, :industry, presence: true

	validates :email, format: {with: VALID_EMAIL_REGEX, message: "%{value} does not match the valid e-mail format."}, allow_blank:true, allow_nil:true

end
