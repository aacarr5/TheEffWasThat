require 'rails_helper'

RSpec.describe Survey, type: :model do

	let(:survey) { FactoryGirl.create(:survey) }
  let(:bad_survey) {Survey.new(zipcode:nil,gender:nil,race:nil,age:nil,faced_microaggressions:nil,seen_microaggressions:nil,industry:nil)}

  describe 'initialization' do
  	it 'should have stuff' do
  		expect(survey.zipcode).to be_a String 
  		expect(survey.gender).to be_a String
  		expect(survey.race).to be_a String
  		expect(survey.age).to be_a Integer
  		expect(survey.email).to be_a String
  	end

    it 'should define surveys as invalid if survey isn\'t filled out properly' do 
      expect(bad_survey.valid?).to be false
      bad_survey.zipcode = "42333"
      bad_survey.gender = "Male"
      bad_survey.race = "Black"
      bad_survey.age = 42
      bad_survey.faced_microaggressions = "Yes"
      bad_survey.seen_microaggressions = "No"
      bad_survey.industry = "Medicine"
      expect(bad_survey.valid?).to be true
    end

  end
end
