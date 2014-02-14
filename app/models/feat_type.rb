class FeatType < ActiveRecord::Base
  has_many :feats

  default_scope { order("name") }

  def to_s
    name
  end
end
