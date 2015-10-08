class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :db_name, null: false
      t.string :name, null: false
      t.string :button_command, null: false
      t.string :type, null: false
      t.string :damage, null: false

      t.belongs_to :character
      t.belongs_to :user

      t.index :name, unique: true
      t.timestamps
    end
  end
end
