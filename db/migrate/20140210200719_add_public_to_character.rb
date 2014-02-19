class AddPublicToCharacter < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      t.boolean :public, default: false
    end
    change_table :campaigns do |t|
      t.boolean :public, default: false
      t.boolean :open, default: false
    end
  end
end
