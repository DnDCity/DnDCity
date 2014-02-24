class AddKeyToCharacterClass < ActiveRecord::Migration
  def change
    change_table :character_classes do |t|
      t.string :key, index: true
      t.string :class_type, index: true
    end
  end
end

