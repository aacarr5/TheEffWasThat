require 'rails_helper'

describe 'the finding survey process', :type => :feature do
	it 'should have a form the user can fill out' do
		visit '/surveys/new'
		fill_in('Zipcode', :with => '62025')
		fill_in('Gender', :with => 'Female')
		fill_in('Race', :with => 'black')
		fill_in('Age', :with => 26)
		fill_in('Email', :with => 'aacarr5@gmail.com')
		fill_in('Faced microaggressions', :with =>'true')
		fill_in('Seen microaggressions', :with =>'true')
		click_button 'Submit'

		expect(page).to have_content 'Thanks'
	end
end