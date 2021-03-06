class User < ActiveRecord::Base
  # write associations here
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    self.happiness > self.nausea ? "happy" : "sad"
  end
end
