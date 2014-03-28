class Size < ActiveRecord::Base
  has_many :races
  default_scope { order("modifier") }

  def to_s
    name
  end

  def ac
    modifier
  end

  def attack
    modifier
  end

  def hide
    4 * modifier
  end

end
