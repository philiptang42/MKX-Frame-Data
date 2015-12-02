require "rails_helper"

feature "admin adds character", %{
  As an admin
  I want to delete a character
  So that I can contend with erroneous content
} do

  scenario "admin clicks delete character button" do
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

  scenario "admin deletes character for reals" do
    admin = FactoryGirl.create(:user, admin: true)

    sample_character = Character.create(
      db_name: "Scorpion",
      name: "Scorpion",
      description: "undead and angry"
    )

    sample_move = Move.create(
      db_name: "Spear",
      name: "Spear",
      button_command: "blah",
      move_type: "damn",
      damage: "5%",
      character: sample_character
    )

    sample_frame = Frame.create(
      startup: "6",
      active: "6",
      recover: "6",
      blockadv: "6",
      hitadv: "666",
      cancelwindow: "N/A",
      move: sample_move
    )

    visit "/"
    click_link('Sign In')

    fill_in 'Email', with: admin.email
    fill_in 'Password', with: admin.password

    click_button 'Log in'

    visit character_path(sample_character)

    click_on("Delete Character (Admins Only)")

    expect(page).to_not have_content("Scorpion")

  end
end
