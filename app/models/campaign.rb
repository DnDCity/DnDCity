class Campaign < ActiveRecord::Base
  resourcify
  belongs_to :user
  has_many :characters

  def to_s
    name
  end
end
