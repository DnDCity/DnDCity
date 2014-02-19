class AddAbilityScoreToSkill < ActiveRecord::Migration
  def change
    change_table :skills do |t|
      t.string :key_ability
      t.boolean :trained_only
      t.boolean :armor_check_penalty
      
    end
  end
end
