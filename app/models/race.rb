class Race < ActiveRecord::Base
  belongs_to :size

  default_scope { includes(:size).order("name") }

  def to_s
    name
  end

  def ability_modifiers?
    str != 0 || dex != 0 || con != 0 || int != 0 || wis != 0 || cha != 0
  end
end
