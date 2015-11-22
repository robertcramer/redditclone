class User < ActiveRecord::Base
	
  has_secure_password
  has_attached_file :avatar, styles: { thumb: "150x150>" }
  
  has_many :posts
  
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates_length_of :username, minimum: 5, maximum: 10
  validates_uniqueness_of :email
  validates_presence_of :email
end
