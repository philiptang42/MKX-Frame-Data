require "rails_helper"

feature "user votes on a comment", %{
  As a user
  I want to vote on comments
  So that I can give approval or disapproval
} do

  context 'tests that need to be done before each' do
    before :each do
    current_user = FactoryGirl.create(:user)

    sample_user = FactoryGirl.create(:user)
    sample_character = FactoryGirl.create(:character)
    sample_move = FactoryGirl.create(:move)
    sample_comment = FactoryGirl.create(:comment)

    # sample_user = User.create(
    #   email: "Kappa@kappa.com",
    #   password: "password",
    #   password_confirmation: "password"
    # )
    #
    # sample_character = Character.create(
    #   db_name: "Scorpion",
    #   name: "Scorpion",
    #   description: "undead and angry"
    # )
    #
    # sample_move = Move.create(
    #   db_name: "Spear",
    #   name: "Spear",
    #   button_command: "blah",
    #   move_type: "damn",
    #   damage: "5%",
    #   character: sample_character
    # )
    #
    # sample_comment = Comment.create(
    #   rating: 3,
    #   body: "oh that is nice",
    #
    #   user: sample_user,
    #   move: sample_move
    # )

    visit character_move_path(sample_character, sample_move)

    expect(page).to have_content("Comments")
    expect(page).to have_content("Submit Your Comment")
  end

    scenario "user is logged in and upvotes a review", js: true do
      page.find("#upvote").click
      expect(page).to have_content("1")
    end

    scenario "user is logged in and downvotes a review", js: true do
      page.find("#downvote").click
      expect(page).to have_content("-1")
    end

    scenario "user regrets their decision, changes vote", js: true do
      page.find("#upvote").click
      page.find("#downvote").click
      expect(page).to have_content("-1")
    end

    scenario "indecisive user undoes their vote", js: true do
      page.find("#upvote").click
      page.find("#upvote").click
      expect(page).to have_content("0")
    end
  end
end
