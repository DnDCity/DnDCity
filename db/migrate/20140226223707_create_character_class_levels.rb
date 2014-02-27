class CreateCharacterClassLevels < ActiveRecord::Migration
  def change
    create_table :character_class_levels do |t|
      t.references :character, index: true
      t.references :character_class, index: true
      t.integer :order
      t.integer :class_level
      t.timestamps
    end
    add_index :character_class_levels, [:character_id, :order]
  end
end
