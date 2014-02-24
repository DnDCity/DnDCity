class CreateConsumableItems < ActiveRecord::Migration
  def change
    create_table :consumable_items do |t|
      t.string :name
      t.text :desc
      t.text :effects
      t.string :weight
      t.string :cost

      t.timestamps
    end
  end
end
