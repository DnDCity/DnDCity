class AddKeyToRace < ActiveRecord::Migration
  def change
    add_column :races, :key, :string
    add_index :races, :key
  end
end
