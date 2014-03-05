class Race < ActiveRecord::Base
  belongs_to :size

  default_scope { includes(:size).order("name") }

  def to_s
    name
  end
end
