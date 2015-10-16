require "rails_helper"

feature "user sees preview video of a move", %{
  As a user
  I want to view a move's video
  So that I can see what the move looks like
} do

  scenario "user sees move video" do
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

    find("#move-video").should be_visible

  end
end
