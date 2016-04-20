require 'rails_helper'

RSpec.describe Survey, type: :model do

	let(:survey) { FactoryGirl.create(:survey) }

  describe 'initialization' do
  	it 'should have stuff' do
  		expect(survey.zipcode).to be_a String 
  		expect(survey.gender).to be_a String
  		expect(survey.race).to be_a String
  		expect(survey.age).to be_a Integer
  		expect(survey.email).to be_a String
  	end 
  end
end
