class CreateCommentVotes < ActiveRecord::Migration
  def change
    create_table :comment_votes do |t|
      t.integer :upvote, null: false
      t.integer :downvote, null: false
      
      t.belongs_to :review, null: false
      t.belongs_to :user, null: false
      t.belongs_to :comment

      t.timestamps null: false
    end
  end
end
