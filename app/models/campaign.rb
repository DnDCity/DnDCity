class Campaign < ActiveRecord::Base
  resourcify
  belongs_to :user

  def to_s
    name
  end
end
