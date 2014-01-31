class Size < ActiveRecord::Base
  has_many :races

  def to_s
    name
  end
end
