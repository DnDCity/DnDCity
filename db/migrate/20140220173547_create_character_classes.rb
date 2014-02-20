class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|
      t.string :name
      t.text :desc
      t.text :class_abilities
      t.string :hit_die
      t.string :BAB_progression
      t.string :base_fort_progression
      t.string :base_ref_progression
      t.string :base_will_progression
      t.integer :skill_points_per_level

      t.timestamps
    end
  end
end
