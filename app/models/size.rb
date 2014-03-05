class Size < ActiveRecord::Base
  has_many :races
  default_scope { order("modifier") }

  def to_s
    name
  end
end
