class AddModifiersToSpells < ActiveRecord::Migration
  def change
    change_table :spells do |t|
      t.text :modifiers
      t.text :prerequisites
      t.string :descriptor
      t.string :casting_time
      t.string :range
      t.string :target
      t.string :area
      t.string :spread
      t.string :duration
      t.string :saving_throw
      t.string :spell_resistance
      
    end
  end
end
