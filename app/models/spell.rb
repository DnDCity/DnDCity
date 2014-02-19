class Spell < ActiveRecord::Base
	has_many :spell_schools
	has_one :spell_sub_school
	has_many :spell_component_types
	has_one :spell_level
	
	def to_s
      name
	end
	
end
