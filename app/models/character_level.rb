class CharacterLevel < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :character
  validates :character_id, presence: true
  validates :level, presence: true
  validates :character_class_id, presence: true, uniqueness: { scope: :character_id }
end
