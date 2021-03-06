require 'spec_helper'

# When I visit the site,
# I want be able to view developer profiles
# so that I may find a suitable jr dev for my company.

feature 'Viewing profiles' do
  scenario 'visiting the index' do
    FactoryGirl.create(:profile)
    visit profiles_path

    expect(page).to have_css 'h2', text: "Browsing All Developers"
    expect(page).to have_content "Mike Mulligan"
  end
end
