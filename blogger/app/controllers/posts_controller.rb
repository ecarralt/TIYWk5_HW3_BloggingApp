class PostsController < ApplicationController

  def index

    @posts = Post.all # select * from posts
    Post.count # select count(*) from posts

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title] # gets what user typed in for name
    @post.body = params[:post][:body] # gets what user typed in for name
    if @post.save # checks .valid? first
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
   @post = Post.find_by id: params[:id]
  end

  def edit
    @post = Post.find_by id: params[:id]
  end

  def update
    @post = Post.find_by id: params[:id]
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    if @post.save # checks .valid? first
      redirect_to show_path id: params[:id], notice: "Your post has been edited!"
    else
      render :edit
    end
  end


end
