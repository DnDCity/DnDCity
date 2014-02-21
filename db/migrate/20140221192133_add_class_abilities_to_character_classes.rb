class AddClassAbilitiesToCharacterClasses < ActiveRecord::Migration
  def change
    change_table :character_classes do |t|
      t.text :class_abilities
      t.float :base_fort_progression
      t.float :base_ref_progression
      t.float :base_will_progression
      t.integer :skill_points_per_level


      t.remove :attack_bonus_per_level

      t.remove :base_fort_save
      t.remove :fort_save_bonus_per_level
      t.remove :base_reflex_save
      t.remove :reflex_save_bonus_per_level
      t.remove :base_will_save
      t.remove :will_save_bonus_per_level

      # level table
      # class_skills

      t.remove :bonus_feat 
      t.remove :bonus_skill_points
      t.remove :bonus_skill_points_per_level


    end

  end
end
