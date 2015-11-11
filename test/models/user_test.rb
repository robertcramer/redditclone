require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def test_new_valid_user
    user = User.new(username: "RCrame55",
                    email: "rcrame@xbox.com")
    refute user.valid?
  end

  def test_new_user_invalid_email
    user = User.new(username: "RCrame55",
                    password: "abc123")
    refute user.valid?
  end

  def test_new_user_invalid_username
    user = User.new(email: "rcrame@xbox.com",
                    password: "abc123" )
    refute user.valid?
  end

  def test_new_user_invalid_password
    user = User.new(username: "RCrame55",
                    email: "rcrame@xbox.com")
    refute user.valid?
  end
end
