require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def test_new_valid_user
    user = User.new(email: params[:email],
                    username: params[:username],
                    password: params[:password])
    assert user.valid?
  end

  def test_new_user_invalid_email
    user = User.new(username: params[:username],
                    password: params[:password])
    refute user.valid?
  end

  def test_new_user_invalid_username
    user = User.new(email: params[:email],
                    password: params[:password])
    refute user.valid?
  end

  def test_new_user_invalid_password
    user = User.new(username: params[:username],
                    email: params[:email])
    refute user.valid?
  end
end
