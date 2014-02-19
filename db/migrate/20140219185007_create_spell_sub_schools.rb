class CreateSpellSubSchools < ActiveRecord::Migration
  def change
    create_table :spell_sub_schools do |t|
      t.string :name
      t.text :desc
      t.references :spell_school, index: true

      t.timestamps
    end
  end
end
