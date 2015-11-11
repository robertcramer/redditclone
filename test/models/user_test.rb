require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "that a user CANNOT be saved if its empty" do
  	user = User.new
  	assert_not user.save
  end
  
  test "CANNOT save user if email is empty" do
  	user = User.new
  	assert_not user.save
  	
  end
end
