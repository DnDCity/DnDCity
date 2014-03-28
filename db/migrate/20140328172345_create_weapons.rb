class CreateWeapons < ActiveRecord::Migration
  def change
      create_table :weapons do |t|
      t.string :name, null: false
      t.text :desc
      t.references :user, index: true
      t.string :damages
      t.string :damagem
      t.string :critical
      t.float :rangeincrement
      t.float :weight
      t.boolean :isthrowable
      t.boolean :islight
      t.boolean :isonehanded
      t.boolean :istwohanded
      t.text :type

      t.timestamps
    end
  end
end
