class AddModifierToSize < ActiveRecord::Migration
  def change
    add_column :sizes, :modifier, :integer
    add_index :sizes, :modifier
  end
end
