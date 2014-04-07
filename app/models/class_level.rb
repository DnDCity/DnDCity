class ClassLevel < ActiveRecord::Base
  belongs_to :character
  belongs_to :character_class
  validates :character_id, presence: true
  validates :class_level, presence: true
  validates :character_class_id, presence: true, uniqueness: { scope: :character_id }

  default_scope { includes(:character_class) }

  def to_s
    "#{character_class.name} #{class_level}"
  end
end
