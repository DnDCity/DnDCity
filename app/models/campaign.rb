class Campaign < ActiveRecord::Base
  resourcify
  belongs_to :user
  has_many :characters

  def members
    User.with_role :member, self
  end

  def to_s
    name
  end
end
