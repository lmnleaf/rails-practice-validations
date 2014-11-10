require 'rails_helper'

feature "Organizations" do

  scenario "User cannot create a new organization without a name" do
    visit organizations_path
    click_on "New Organization"
    click_on "Create Organization"
    expect(page).to have_content("Name can't be blank")
  end

end
