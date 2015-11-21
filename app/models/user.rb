class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_secure_password

  has_many :posts
  

  validates_length_of :username, minimum: 5, maximum: 10
  validates_uniqueness_of :email
  validates_presence_of :email
end
