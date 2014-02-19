class CreateFeatTypes < ActiveRecord::Migration
  def change
    create_table :feat_types do |t|
      t.string :name, null: false
      t.text :desc

      t.timestamps
    end
  end
end
