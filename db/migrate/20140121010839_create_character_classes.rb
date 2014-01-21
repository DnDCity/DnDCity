class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|
      t.string :name
      t.text :desc
      t.string :hit_die
      t.string :alignment_restrictions

      t.float :base_attack_bonus
      t.float :attack_bonus_per_level

      t.float :base_fort_save
      t.float :fort_save_bonus_per_level
      t.float :base_reflex_save
      t.float :reflex_save_bonus_per_level
      t.float :base_will_save
      t.float :will_save_bonus_per_level

      # level table
      # class_skills

      t.integer :bonus_feat 
      t.integer :bonus_skill_points
      t.integer :bonus_skill_points_per_level

      # spells per day
      # spells known
      # spell list

      t.timestamps
    end
  end
end
