require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :character do
    sequence(:db_name) {|n| "move#{n}" }
    sequence(:name) { |n| "character#{n}" }
    description { |n| "This is a character in Mortal Kombat X" }
  end

  factory :move do
    sequence(:db_name) { |n| "move#{n}" }
    sequence(:name) { |n| "move#{n}" }
    sequence(:button_command) { |n| "#{n}"}
    sequence(:move_type) { |n| "#{n}" }
    sequence(:damage) { |n| "#{n}%"}

    character
  end

  factory :frame do
    sequence(:startup) { |n| "#{n}" }
    sequence(:active) { |n| "#{n}" }
    sequence(:recover) { |n| "#{n}" }
    sequence(:blockadv) { |n| "#{n}" }
    sequence(:hitadv) { |n| "#{n}" }
    sequence(:cancelwindow) { |n| "#{n}" }

    move
  end

end
