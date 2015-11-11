require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def test_new_valid_post
    post = Post.new(title: "Check this out!",
                    link: "http://yahoo.com")

    assert post.valid?
  end
end
