class AddCharacterClassToFeats < ActiveRecord::Migration
  def change
    add_reference :feats, :character_class, index: true
  end
end
