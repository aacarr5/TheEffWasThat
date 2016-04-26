require 'rails_helper'

describe 'the finding survey process', :type => :feature do
	it 'should have a form the user can fill out' do
		visit '/surveys/new'
		fill_in('Zipcode', :with => '62025')
		select('Female', :from => 'Gender')
		select('Black',:from => "Race")
		fill_in('Age', :with => 26)
		fill_in('Email', :with => 'aacarr5@gmail.com')
		select('Yes', :from => 'Faced Microaggressions')
		select('No', :from => 'Seen Microaggressions')
		click_button 'Submit'

		expect(page).to have_content 'Thanks'
	end
end