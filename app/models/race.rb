class Race < ActiveRecord::Base
  belongs_to :size

  def to_s
    name
  end
end
