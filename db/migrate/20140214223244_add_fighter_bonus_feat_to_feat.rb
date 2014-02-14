class AddFighterBonusFeatToFeat < ActiveRecord::Migration
  def change
    add_column :feats, :fighter_bonus_feat, :boolean
    add_index :feats, :fighter_bonus_feat
  end
end
