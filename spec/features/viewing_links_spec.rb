require 'spec_helper'
feature 'See bookmarks' do
  scenario 'Visit homepage and see existing web-links' do

  visit '/links'
  Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')

  expect(page.status_code).to eq 200

  within 'ul#links' do
    expect(page).to have_content("Makers Academy")
    end
  end
end
