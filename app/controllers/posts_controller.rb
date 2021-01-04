class PostsController < ApplicationController
  before_action :authenticate_member!, only: [:new, :create]

  def index
    @posts = Post.most_recent_first
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.member_id = current_member.id
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
