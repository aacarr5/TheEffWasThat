require 'rails_helper'

describe 'survey submission', :type => :feature do
	it 'submit process' do
		visit '/surveys/new'
		fill_in('Zipcode', :with => '62025')
		select('Female', :from => 'Gender')
		select('Black',:from => "Race")
		fill_in('Age', :with => 26)
		fill_in('Email', :with => 'aacarr5@gmail.com')
		select('Yes', :from => 'Faced Microaggressions')
		select('No', :from => 'Seen Microaggressions')
		select('Finance', :from => "Industry")
		click_button 'Submit'

		expect(page).to have_content 'Thanks'
	end

	it 'invalid submission' do
		visit '/surveys/new'
		select('Female', :from => 'Gender')
		select('Black',:from => "Race")
		fill_in('Age', :with => 26)
		fill_in('Email', :with => 'aacarr5@gmail.com')
		select('Yes', :from => 'Faced Microaggressions')
		select('No', :from => 'Seen Microaggressions')
		select('Finance', :from => "Industry")
		click_button 'Submit'

		expect(page).to have_content 'Hm..something went wrong'
		expect(find_field('Email').value).to eq('aacarr5@gmail.com')
	end


end