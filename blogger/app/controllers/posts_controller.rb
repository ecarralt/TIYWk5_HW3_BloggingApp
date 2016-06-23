class PostsController < ApplicationController

  def index

    @posts = Post.all # select * from artists
    Post.count # select count(*) from artists

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title] # gets what user typed in for name (not clear here)
    @post.body = params[:post][:body] # gets what user typed in for name (not clear here)    
    if @post.save # checks .valid? first
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
   @post = Post.find_by id: params[:id]
  end


end
