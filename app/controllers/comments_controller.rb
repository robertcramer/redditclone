class CommentsController < ApplicationController


  def index
    @post = Post.find(params[:id])
    @comments = @post.comments
    render :index
  end

  def create
    # @comment = Comment.create(post_id: params[:id],
    #                           content: params[:comment])
    @post = Post.find(params[:id])
    @post.comments.create!(content: params[:comment])
    render :'comments/index'
  end
end
