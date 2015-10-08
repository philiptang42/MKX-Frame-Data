class Move < ActiveRecord::Base
  belongs_to :character
  has_many :comments
  has_many :move_votes
  has_many :users,
    through: :user_moves
  has_many :user_moves

  validates :db_name, presence: true
  validates :name, presence: true
  validates :button_command, presence: true
  validates :type, presence: true
  validates :damage, presence: true

  def upvotes_score
    upvotes = votes.where(upvote: 1).count
    if upvotes.nil?
      return 0
    else
      return upvotes
    end
  end

  def downvotes_score
    downvotes = votes.where(downvote: 1).count
    if downvotes.nil?
      return 0
    else
      return downvotes
    end
  end

  def score
    self.upvotes_score - self.downvotes_score
  end
end
