class PostsController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_author!, except: [:index, :show]

  def index
    @posts = Post.paginate(page: params[:page])
  end

  def create
  	@post = current_author.posts.build(params[:post])
  	if @post.save
      flash[:success] = "Post created!"
  		redirect_to @post
  	else
  		render 'new'
  	end
  end

  def new
  	@post = Post.new
  end

  def show

  end

  def edit
    unauthorized! if cannot? :update, @post
  end

  def update

  end

  def destroy

  end


end
