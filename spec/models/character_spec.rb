require "rails_helper"

describe Character do
  describe "table" do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:description).of_type(:string) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
  end

  describe "associations" do
    it { should have_many(:moves) }
    it { should have_many(:users).through(:user_characters) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }

    subject { FactoryGirl.create(:character) }
    it { should validate_uniqueness_of(:name) }
  end
end
