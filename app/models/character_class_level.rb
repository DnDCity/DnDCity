class CharacterClassLevel < ActiveRecord::Base
  belongs_to :character
  belongs_to :character_class
end
