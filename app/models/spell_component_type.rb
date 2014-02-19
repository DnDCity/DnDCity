class SpellComponentType < ActiveRecord::Base
  belongs_to :spell
  def to_s
    name
  end
end
