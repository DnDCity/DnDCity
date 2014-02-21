class CreateSpellComponentTypes < ActiveRecord::Migration
  def change
    create_table :spell_component_types do |t|
      t.string :name
      t.string :key
      t.text :desc

      t.timestamps
    end
  end
end
