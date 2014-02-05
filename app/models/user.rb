class User < ActiveRecord::Base
  rolify # user has many roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :characters

  def to_s
    if name && !name.empty?
      name
    else
      email
    end
  end
end
