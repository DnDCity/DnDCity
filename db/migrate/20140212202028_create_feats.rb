class CreateFeats < ActiveRecord::Migration
  def change
    create_table :feats do |t|
      t.string :name, null: false
      t.text :desc
      t.references :feat_type, index: true
      t.text :modifiers
      t.text :prerequisites
      t.text :benefit

      t.timestamps
    end
  end
end
