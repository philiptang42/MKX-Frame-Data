# require "rails_helper"
#
# feature "user votes on a comment", %{
#   As a user
#   I want to vote on comments
#   So that I can give approval or disapproval
# } do
#
#     scenario "user votes on a comment" do
#       current_user = FactoryGirl.create(:user)
#
#       sample_character = Character.create(
#         db_name: "Scorpion",
#         name: "Scorpion",
#         description: "undead and angry"
#       )
#
#       sample_move = Move.create(
#         db_name: "Spear",
#         name: "Spear",
#         button_command: "blah",
#         move_type: "damn",
#         damage: "5%",
#         character: sample_character
#       )
#
#       sample_frame = Frame.create(
#         startup: "6",
#         active: "6",
#         recover: "6",
#         blockadv: "6",
#         hitadv: "666",
#         cancelwindow: "N/A",
#         move: sample_move
#       )
#
#       sample_comment = Comment.create(
#         rating: 3,
#         body: "oh that is nice",
#
#         user: current_user,
#         move: sample_move
#       )
#
#       visit character_path(sample_character)
#       click_on("Spear")
#
#       expect(page).to have_content("Spear")
#
#       find("#move-video-big").should be_visible
#
#       expect(page).to have_content("Comments")
#       expect(page).to have_content("Submit Your Comment")
#
#       page.find("#upvote").click
#       expect(page).to have_content("1")
#
#     end
#   end
