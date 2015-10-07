class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.string :startup, null: false
      t.string :active, null: false
      t.string :recover, null: false
      t.string :blockadv, null: false
      t.string :hitadv, null: false
      t.string :cancelwindow, null: false
      t.belongs_to :move

      t.timestamps
    end
  end
end
