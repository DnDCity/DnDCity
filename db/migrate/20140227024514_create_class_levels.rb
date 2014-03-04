class CreateClassLevels < ActiveRecord::Migration
  def change
    create_table :class_levels do |t|
      t.references :character, index: true
      t.references :character_class, index: true
      t.integer :class_level

      t.timestamps
    end
  end
end
