class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.references :size
      t.integer :speed
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha

      t.integer :bonus_feat 
      t.integer :bonus_skill_points
      t.integer :bonus_skill_points_per_level

      t.text :desc

      t.timestamps
    end
  end
end
