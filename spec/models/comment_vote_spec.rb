require "rails_helper"

describe CommentVote do
  describe "table" do
    it { should have_db_column(:upvote).of_type(:integer) }
    it { should have_db_column(:downvote).of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
  end

  describe "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:comment) }
  end

  describe "validations" do
    it { should validate_presence_of(:upvote) }
    it { should validate_presence_of(:downvote) }
  end
end
