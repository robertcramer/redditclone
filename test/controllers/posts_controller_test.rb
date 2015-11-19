require 'test_helper'

class PostsControllerTest < ActionController::TestCase
 def login!
   session[:user_id] = user(:user_id).id
 end

 test "logged in users can make posts" do
  login!
  get :new
  assert_response 200
  assert_not_nil assigns(:post)
 end

  test "non-logged in user can't make post" do
    get :new
    assert_redirected_to login_path
  end




end
