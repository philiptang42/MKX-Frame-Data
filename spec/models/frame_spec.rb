require "rails_helper"

describe Frame do
  describe "table" do
    it { should have_db_column(:startup).of_type(:string) }
    it { should have_db_column(:active).of_type(:string) }
    it { should have_db_column(:recover).of_type(:string) }
    it { should have_db_column(:blockadv).of_type(:string) }
    it { should have_db_column(:hitadv).of_type(:string) }
    it { should have_db_column(:cancelwindow).of_type(:string) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
  end

  describe "associations" do
    it { should belong_to(:move) }
  end

  describe "validations" do
    it { should validate_presence_of(:startup) }
    it { should validate_presence_of(:active) }
    it { should validate_presence_of(:recover) }
    it { should validate_presence_of(:blockadv) }
    it { should validate_presence_of(:hitadv) }
    it { should validate_presence_of(:cancelwindow) }
  end
end
