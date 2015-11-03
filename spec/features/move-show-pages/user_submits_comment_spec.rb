require "rails_helper"

feature "user sees a move's comments", %{
  As a user
  I want to view a move's comments
  So that I can see what people think of it
} do

  scenario "user submits comment" do
    sample_user = User.create(
      email: "blahblah@blah.com",
      password: "whatwhat",
      password_confirmation: "whatwhat"
    )

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

    sample_comment = Comment.create(
      rating: 3,
      body: "oh my goodness",
      move: sample_move,
      user: sample_user
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
    save_and_open_page
    visit character_move_path(sample_move)

    expect(page).to have_content("Spear")

    find("#move-video-big").should be_visible

    save_and_open_page

    expect(page).to have_content("Comments")
    expect(page).to have_content("Submit Your Comment")

    expect(page).to have_content(sample_comment.body)
  end
end
