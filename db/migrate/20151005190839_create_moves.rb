class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name, null: false
      t.string :button_command, null: false
      t.string :type, null: false
      t.string :damage, null: false
      t.belongs_to :character

      t.timestamps
    end
  end
end
