class SpellLevel < ActiveRecord::Base
  belongs_to :spell
  belongs_to :character_class
  def to_s
    spell.name
  end
end
