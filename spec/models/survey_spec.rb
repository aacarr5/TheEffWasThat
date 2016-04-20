require 'rails_helper'

RSpec.describe Survey, type: :model do

	let(:survey) { FactoryGirl.create(:survey) }

  describe 'initialization' do
  	it 'should have stuff' do
  		expect(survey.name).to be_a String 
  	end 
  end
end
