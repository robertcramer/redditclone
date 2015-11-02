class User < ActiveRecord::Base
  has_secure_password

  has_many :posts
  

  validates_length_of :username, minimum: 5, maximum: 10
  validates_uniqueness_of :email
  validates_presence_of :email
end
