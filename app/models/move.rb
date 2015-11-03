class Move < ActiveRecord::Base
  belongs_to :character
  has_many :comments
  has_many :move_votes
  has_many :users,
    through: :user_moves
  has_many :user_moves
  has_many :frames

  validates :db_name, presence: true
  validates :name, presence: true
  validates :button_command, presence: true
  validates :move_type, presence: true
  validates :damage, presence: true
  validates :character_id, presence: true
end
