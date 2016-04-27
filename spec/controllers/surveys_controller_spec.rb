require 'rails_helper'

RSpec.describe SurveysController, type: :controller do
	describe 'GET new survey' do 
		it 'has a 200 status' do 
			get :new
			expect(response.status).to eq 200
		end
	end

	describe 'POST' do
		it 'can post surveys' do
			old_count = Survey.count
			survey = {
				zipcode:'62025',
				gender:'female',
				race:'black',
				age:'26',
				email:nil,
				faced_microagressions:"yes",
				seen_microaggressions:"no",
				industry:'Finance'
			}
			post :create, survey: survey
			expect(Survey.count - old_count).to eq(1)
		end
	end
end
