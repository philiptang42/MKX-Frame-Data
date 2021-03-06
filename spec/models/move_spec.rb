require "rails_helper"

describe Move do
  describe "table" do
    it { should have_db_column(:db_name).of_type(:string) }
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:move_type).of_type(:string) }
    it { should have_db_column(:button_command).of_type(:string) }
    it { should have_db_column(:damage).of_type(:string) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
  end

  describe "associations" do
    it { should belong_to(:character) }
    it { should have_many(:comments) }
    it { should have_many(:users).through(:user_moves) }
  end

  describe "validations" do
    it { should validate_presence_of(:db_name) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:move_type) }
    it { should validate_presence_of(:button_command) }
    it { should validate_presence_of(:damage) }
  end
end
