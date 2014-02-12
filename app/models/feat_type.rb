class FeatType < ActiveRecord::Base
  has_many :feats

  def to_s
    name
  end
end
