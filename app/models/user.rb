class User < ActiveRecord::Base

	GENDERS = ["Other","Non-gender Conforming","Gender-fluid","Agender","Trans-Femme","Trans-Masc","Female","Male","Unsure"]
	RESPONSES = %w(Yes No Maybe)
	RACES = ['Other',"Black", "Asian","Indian","Mixed-Race","Latino/Latina", "Native-American","White"]
	INDUSTRIES = %w(Real-estate Healthcare/Medicine Law Technology Marketing/Advertising Finance Non-profit Retail Food-industry Government Transportation Education Agriculture Mining Construction Arts/Entertainment Social-Services Other)

	has_many :microaggressions

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
end
