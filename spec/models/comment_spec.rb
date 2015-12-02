require "rails_helper"

describe Comment do
  describe "table" do
    it { should have_db_column(:rating).of_type(:integer) }
    it { should have_db_column(:body).of_type(:string) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
  end

  describe "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:move) }
    it { should have_many(:comment_votes) }
  end

  describe "validations" do
    it { should have_valid(:rating).when (5) }
    it { should validate_inclusion_of(:rating).in_range(1..5).
                with_message(/ must be between 1 to 5/)}
    it { should validate_presence_of(:body) }
    it { should validate_length_of(:body).is_at_least(5) }
  end

  it "should describe score" do
    c = FactoryGirl.create(:comment)
    c.upvotes_score == 1
    c.downvotes_score == 1
    c.score.should == 0
  end

end
