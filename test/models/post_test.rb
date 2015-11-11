require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def test_new_valid_post
    post = Post.new (title: params[:title],
                      link: params[:link])
    assert post.valid?
  end
end
