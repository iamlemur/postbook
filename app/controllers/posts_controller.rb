class PostsController < ApplicationController

  before_filter :authenticate_author!, except: [:index, :show]

  def index
  end

  def create
  	@post = current_author.posts.build(params[:post])
  	if @post.save
      flash[:success] = "Post created!"
  		render 'index'
  	else
  		render 'new'
  	end
  end

  def new
  	@post = Post.new
  end
end
