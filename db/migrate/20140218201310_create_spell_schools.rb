class CreateSpellSchools < ActiveRecord::Migration
  def change
    create_table :spell_schools do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
