class CreateSpellLevels < ActiveRecord::Migration
  def change
    create_table :spell_levels do |t|
      t.references :spell, index: true
      t.references :character_class, index: true
      t.integer :level

      t.timestamps
    end
  end
end
