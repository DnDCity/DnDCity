class Skill < ActiveRecord::Base
  has_many :class_skills
  has_many :character_classes, through: :class_skills

  default_scope { order("name") }
  def to_s
    name
  end

  def to_param
    key
  end
end
