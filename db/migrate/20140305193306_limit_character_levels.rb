class LimitCharacterLevels < ActiveRecord::Migration
  def change
    add_index :class_levels, [:character_id, :character_class_id], unique: true
  end
end
