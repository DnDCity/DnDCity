class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name                  # Character Name
      t.references :user, index: true # Player Name

      # description 
      t.references :race              # Race / Template
      # t.references :character_class   # Class 
      t.references :size 
      t.string :gender
      t.string :alignment 
      t.string :religion
      t.float :height # meters
      t.float :weight # kilograms
      t.integer :age
      t.string :looks 
      t.text :desc

      # Ability Scores
      t.integer :base_str
      t.integer :base_dex
      t.integer :base_con
      t.integer :base_int
      t.integer :base_wis
      t.integer :base_cha

      t.integer :current_hp

      t.timestamps
    end
  end
end
