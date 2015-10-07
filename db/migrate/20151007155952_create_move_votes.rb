class CreateMoveVotes < ActiveRecord::Migration
  def change
    create_table :move_votes do |t|
      t.integer :upvote, null: false
      t.integer :downvote, null: false
      
      t.belongs_to :review, null: false
      t.belongs_to :user, null: false
      t.belongs_to :move

      t.timestamps null: false
    end
  end
end
