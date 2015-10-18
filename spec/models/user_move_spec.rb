require 'rails_helper'

describe UserMove do
  describe "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:move) }
  end
end
