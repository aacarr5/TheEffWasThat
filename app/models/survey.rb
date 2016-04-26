class Survey < ActiveRecord::Base

	GENDERS = ["Non-gender Conforming","Gender-fluid","Trans-Femme","Trans-Masc","Gender-free","Female","Male",'Other']
	RESPONSES = %w(Yes No Maybe)
	RACES = ["Black", "Asian","Mixed-Race","Latino/Latina", "Native-American","White",'Other']
	INDUSTRIES = %w(Real-estate Healthcare/Medicine Law Technology Marketing/Advertising Finance Non-profit Retail Food-industry Government Transportation Education Agriculture Mining Construction Arts/Entertainment Social-Services)

end
