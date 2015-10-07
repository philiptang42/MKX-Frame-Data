require 'rails_helper'

describe UserCharacter do
  describe "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:character) }
  end
end
