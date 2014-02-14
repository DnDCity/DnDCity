class Feat < ActiveRecord::Base
  belongs_to :feat_type
  has_and_belongs_to_many :prerequisite_feats, class_name: "Feat", 
                                     join_table: "prerequisite_feats",
                                     foreign_key: "feat_id",
                                     association_foreign_key: "prerequisite_id"
  has_and_belongs_to_many :dependent_feats, class_name: "Feat", 
                                     join_table: "prerequisite_feats",
                                     foreign_key:  "prerequisite_id",
                                     association_foreign_key: "feat_id"

  def to_s
    name
  end
end
