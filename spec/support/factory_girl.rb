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

  factory :move do
    sequence(:name) { |n| "move#{n}" }
    sequence(:button_command) { |n| "#{n}"}
    sequence(:type) { |n| "#{n}" }
    sequence(:damage) { |n| "#{n}%"}

    character
  end

end
