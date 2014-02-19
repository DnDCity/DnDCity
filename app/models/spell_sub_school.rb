class SpellSubSchool < ActiveRecord::Base
  belongs_to :spell_school
  def to_s
    name
  end
end
