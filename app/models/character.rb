class Character < ActiveRecord::Base
  belongs_to :user # User owns characters
  belongs_to :race # Race classifies Character
  belongs_to :size # Size classifies Character
  has_many :class_levels
end
