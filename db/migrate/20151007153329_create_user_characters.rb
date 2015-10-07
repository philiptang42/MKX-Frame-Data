class CreateUserCharacters < ActiveRecord::Migration
  def change
    create_table :user_characters do |t|
      t.belongs_to :user
      t.belongs_to :character
    end
  end
end
