require 'rails_helper'

describe 'the finding survey process', :type => :feature do
	it 'find the survey page' do
		visit '/'
		click_link ('Contribute')
		expect(page).to have_content 'Thanks for Filling Out This Form!' 
	end 
end