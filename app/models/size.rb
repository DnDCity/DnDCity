class Size < ActiveRecord::Base
  has_many :races
  default_scope { order("modifier") }

  validates :name, presence: true
  validates :modifier, presence: true, numericality: { only_integer: true }

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
