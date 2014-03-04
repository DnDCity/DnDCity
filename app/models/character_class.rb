class CharacterClass < ActiveRecord::Base
  BAB_TYPES = %w(poor average good)
  SAVE_TYPES = %w(poor good)
 
 
  has_many :class_skills
  has_many :skills, through: :class_skills
  default_scope { order("name") }

  validates :name, presence: true
## Broken validations?
#  validates :bab_type , :inclusion => { :in => BAB_TYPES }
#  validates :fort_type, :inclusion => { :in => SAVE_TYPES }
#  validates :ref_type , :inclusion => { :in => SAVE_TYPES }
#  validates :will_type, :inclusion => { :in => SAVE_TYPES }
  

  def to_s
    name
  end

  def to_param
    key
  end

  def bab_at level
    case bab_type
    when 'poor'
      (level * 0.5).floor
    when 'average'
      (level * 0.75).floor
    when 'good'
      level
    else 
      0
    end
  end

  def save_at level, save_type
    case save_type
    when 'poor'
      (level / 3).floor
    when 'good'
      (2 + level * 0.5).floor
    else 
      0
    end
  end

  def fort_at level
    save_at level, fort_type
  end

  def ref_at level
    save_at level, ref_type
  end

  def will_at level
    save_at level, will_type
  end

end
