class User < ApplicationRecord

  has_secure_password
  has_many :requests
  has_many :responses


  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
end
