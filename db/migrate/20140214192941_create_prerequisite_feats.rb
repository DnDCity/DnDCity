class CreatePrerequisiteFeats < ActiveRecord::Migration
  def change
    create_table :prerequisite_feats, id: false do |t|
      t.references :feat, index: true
      t.references :prerequisite, index: true
    end
  end
end
