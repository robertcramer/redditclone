class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates_length_of :username, minimum: 5, maximum: 10
  validates_uniqueness_of :email, :username
  validates_presence_of :email, :username, :password
end
