class AddSpellSubSchool < ActiveRecord::Migration
  def change
    change_table :spells do |t|
      t.references :spell_sub_school, index: true
    end
  end
end
