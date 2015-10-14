require "rails_helper"

feature "admin adds character", %{
  As an admin
  I want to add a new character
  So that I can keep up with the game's latest build
} do

  scenario "admin clicks add character button" do
    admin = FactoryGirl.create(:user, admin: true)

    visit "/"
    click_link('Sign In')

    fill_in 'Email', with: admin.email
    fill_in 'Password', with: admin.password

    click_button 'Log in'

    visit characters_path
    click_on("Add Character (Admins Only)")

    expect(page).to have_content("Add a New Character")
  end

  scenario "admin adds character for reals" do
    admin = FactoryGirl.create(:user, admin: true)

    visit "/"
    click_link('Sign In')

    fill_in 'Email', with: admin.email
    fill_in 'Password', with: admin.password

    click_button 'Log in'

    visit characters_path
    click_on("Add Character (Admins Only)")

    fill_in "Name", with: "Predator"
    fill_in "Db name", with: "Predator"
    fill_in "Description", with: "uh oh here he comes"

    click_on("Add Character")

    expect(page).to have_content("Predator")
  end
end
