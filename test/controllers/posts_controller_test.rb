require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
		@post = posts(:one)
	end

	# test "logged in users can delete a post" do
	# 	assert_difference('Post.count', -1) do
	# 	delete :destroy, id: @post
	# end

	# assert_redirected_to posts_path
 #  end

  	test "should show post" do
	  	get :show, id: @post
	  	assert_response :success
  	end

  	test "should get new post" do
  		get :index
  		assert_response :success
  		assert_not_nil assigns(:posts)
  	end
end
