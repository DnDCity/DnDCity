class ClassSkill < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :skill
end
