class Character < ActiveRecord::Base
  has_many :moves
  has_many :users,
    through: :user_characters
  has_many :user_characters

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
end
