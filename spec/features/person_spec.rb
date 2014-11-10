require 'rails_helper'

feature "Person" do

  scenario "User cannot create a new person without first name, last name, dob" do
    visit people_path
    click_on "New Person"
    click_on "Create Person"
    expect(page).to have_content("First name can't be blank" &&
      "Last name can't be blank" && "Date of birth can't be blank")
  end

end
