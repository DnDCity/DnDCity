class AddTempAbilityScoresToCharacter < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      Character::ABILITIES.each do |ability|
        t.integer "temp_#{ability}", default: 0
      end
      t.integer "base_hp", default: 0
    end
  end
end
