require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :character do
    sequence(:name) { |n| "character#{n}" }
    description "This is a character in Mortal Kombat X"
  end

end
