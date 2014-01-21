class CreateEffects < ActiveRecord::Migration
  def change
    create_table :effects do |t|
      t.string :name
      t.text :desc
      t.text :effects

      t.timestamps
    end
  end
end
