class CharacterClass < ActiveRecord::Base
 
  has_many :class_skills
  has_many :skills, through: :class_skills
  default_scope { order("name") }

  def to_s
    name
  end

  def to_param
    key
  end
end
