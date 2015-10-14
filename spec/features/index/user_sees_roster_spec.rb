require "rails_helper"

feature "user sees roster", %{
  As a user
  I want to view a list of MKX characters
  So that I can pick one to inspect the movelist of
} do
  # Acceptance Criteria
  # * If a user goes to the index page, they see a list of characters.

  scenario "user views index page" do
    sample_character = Character.create(
      db_name: "Scorpion",
      name: "Scorpion",
      description: "undead and angry"
    )
    visit characters_path
    expect(page).to have_content(sample_character.name)
  end

  scenario "user does not see add character button" do

    visit characters_path
    expect(page).to_not have_content("Add Character")
  end
end
