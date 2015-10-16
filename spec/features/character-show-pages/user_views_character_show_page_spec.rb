require "rails_helper"

feature "user sees character show page", %{
  As a user
  I want to view one character's moveset
  So that I can see what moves they have
} do

  scenario "user accesses character show page" do
    sample_character = Character.create(
      db_name: "Scorpion",
      name: "Scorpion",
      description: "undead and angry"
    )
    visit root_path
    visit character_path(sample_character)

    expect(page).to have_content("Scorpion")
    expect(page).to have_content("undead and angry")
  end

  scenario "user sees move basics, frames, video" do
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

    visit character_path(sample_character)

    expect(page).to have_content("Scorpion")
    expect(page).to have_content("undead and angry")
    expect(page).to have_content("Spear")
    expect(page).to have_content("5%")
    expect(page).to have_content("6")
    expect(page).to have_content("666")
  end
end
