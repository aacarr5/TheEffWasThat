class Survey < ActiveRecord::Base

	GENDERS = ["Non-gender Conforming","Gender-fluid","Trans-Femme","Trans-Masc","Gender-free","Female","Male",'Other']
	RESPONSES = %w(Yes No Maybe)
	RACES = ["Black", "Asian","Mixed-Race","Latino/Latina", "Native-American","White",'Other']

end
