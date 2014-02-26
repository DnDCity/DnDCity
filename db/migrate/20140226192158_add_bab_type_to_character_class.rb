class AddBabTypeToCharacterClass < ActiveRecord::Migration
  def change
    change_table :character_classes do |t|
      t.string :bab_type
      t.string :fort_type
      t.string :ref_type
      t.string :will_type
      t.remove :base_fort_progression
      t.remove :base_ref_progression
      t.remove :base_will_progression
      t.remove :base_attack_bonus
    end
  end
end
