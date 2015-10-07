class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :rating, null: false
      t.string :body, null: false

      t.belongs_to :user
      t.belongs_to :move

      t.timestamps null: false
    end
  end
end
