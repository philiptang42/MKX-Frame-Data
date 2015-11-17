class Comment < ActiveRecord::Base
  paginates_per 5
  belongs_to :user
  belongs_to :move
  has_many :comment_votes

  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 1..5, message: " must be between 1 to 5" }
  validates :body, presence: true
  validates :body, length: { minimum: 5 }

def upvotes_score
  upvotes = comment_votes.where(upvote: 1).count
  if upvotes.nil?
    return 0
  else
    return upvotes
  end
end

def downvotes_score
  downvotes = comment_votes.where(downvote: 1).count
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
