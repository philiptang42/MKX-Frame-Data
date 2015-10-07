require 'rails_helper'

describe User do
  describe "associations" do
    it { should have_many(:characters).through(:user_characters) }
    it { should have_many(:moves).through(:user_moves) }
    it { should have_many(:comments) }
  end

  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end
end
