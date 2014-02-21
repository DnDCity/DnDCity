class SpellSchool < ActiveRecord::Base
  #belongs_to_and_has_many :spell
  belongs_to :spell
  has_one :spell_sub_school
  def to_s
    name
  end
end
