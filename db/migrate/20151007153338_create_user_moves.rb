class CreateUserMoves < ActiveRecord::Migration
  def change
    create_table :user_moves do |t|
      t.belongs_to :user
      t.belongs_to :move
    end
  end
end
