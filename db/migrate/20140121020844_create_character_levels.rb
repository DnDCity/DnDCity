class CreateCharacterLevels < ActiveRecord::Migration
  def change
    create_table :character_levels do |t|
      t.references :character
      t.integer :level
      t.references :character_class, index: true
      t.integer :class_level
      t.integer :hp

      t.timestamps
    end
  end
end
