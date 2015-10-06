class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.index :name, unique: true

      t.timestamps
    end
  end
end
