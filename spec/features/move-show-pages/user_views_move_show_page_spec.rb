require "rails_helper"

feature "user sees a move's show page", %{
  As a user
  I want to view a move's show page
  So that I can see a bigger video and write comments
} do

  scenario "user sees show page" do
    current_user = FactoryGirl.create(:user)

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
    click_on("Spear")

    save_and_open_page

    expect(page).to have_content("Spear")

    find("#move-video-big").should be_visible

    expect(page).to have_content("Comments")
    expect(page).to have_content("Submit Your Comment")

  end
end
