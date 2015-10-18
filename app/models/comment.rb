class Comment < ActiveRecord::Base
  paginates_per 5
  belongs_to :user
  belongs_to :move
  has_many :comment_votes

  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 1..5, message: " must be between 1 to 5" }
  validates :body, presence: true
  validates :body, length: { minimum: 5 }
end
