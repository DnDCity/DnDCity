class Feat < ActiveRecord::Base
  belongs_to :feat_type

  def to_s
    name
  end
end
