class Skill < ActiveRecord::Base

  default_scope { order("name") }
  def to_s
    name
  end

  def to_param
    key
  end
end
