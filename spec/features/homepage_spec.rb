require 'rails_helper'

describe 'the finding survey process', :type => :feature do
	it 'find the survey page' do
		visit '/'
		click_link ('Contribute')
		expect(page).to have_content 'Would you like to sign in or sign up?' 
	end 
end