class PostsController < ApplicationController
  load_and_authorize_resource
  before_filter :authenticate_author!, except: [:index, :show]

  def index
    @posts = Post.paginate(page: params[:page]).per_page(15)
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

  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    @post = Post.find(params[:id])

    file_data = params[:post][:file].read
    text = Yomu.read :text, file_data
    logger.debug "#{text}"

    respond_to do |format|
      if @post.update_attributes(params[:post])
        flash[:notice] = 'Post was successfully updated.'
        format.html { redirect_to(@post) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy

  end


end
