class CreateClassSkills < ActiveRecord::Migration
  def change
    create_table :class_skills do |t|
      t.references :character_class, index: true
      t.references :skill, index: true
      t.string :subject

      t.timestamps
    end
  end
end
