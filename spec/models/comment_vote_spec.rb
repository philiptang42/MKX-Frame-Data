require "rails_helper"

describe CommentVote do
  describe "table" do
    it { should have_db_column(:upvote).of_type(:integer) }
    it { should have_db_column(:downvote).of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
  end

  describe "associations" do
    it { should belong_to(:comment) }
    it { should belong_to(:user) }
  end
  
end
