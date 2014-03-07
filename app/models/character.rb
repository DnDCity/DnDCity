class Character < ActiveRecord::Base
  ABILITIES = [:str,:dex,:con,:int,:wis,:cha]
  ABILITY_NAMES = {str: "Strength",dex: "Dexterity",con: "Constitution",int: "Intelligence",wis: "Wisdom",cha: "Charisma"}

  belongs_to :user # User owns characters
  belongs_to :race # Race classifies Character
  belongs_to :size # Size classifies Character
  has_many :class_levels
  validates :name, presence: true
  validates :user, presence: true

  def ability_modifier score
    (score / 2 ).floor - 5
  end

  def to_s
    name
  end

  ABILITIES.each do |ability|
    base = "base_#{ability}"
    race_ability = "race_#{ability}"
    temp_ability = "temp_#{ability}"
    define_method "#{ability}_modifier" do
      ability_modifier send(ability)
    end
    define_method race_ability do
      race ? race[ability] : 0
    end
    define_method ability do
      send(base) + send(race_ability) + send(temp_ability)
    end
  end


end
