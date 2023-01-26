class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    if @post.save 
      redirect_to posts_path
    else
      render action: 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update 
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render action: 'edit'
    end
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end
end
