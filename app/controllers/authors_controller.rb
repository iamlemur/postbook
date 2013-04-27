class AuthorsController < ApplicationController
  load_and_authorize_resource
  def new
  end

	def index
  end

  def show
    @author = Author.find(params[:id])
    @posts = @author.posts.find(:all)
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @author }
      format.json  { render :json => @author }
    end
  end

  def edit
    unauthorized! if cannot? :update, @author
    @author = Author.find(params[:id])
  end

  # PUT /authors/1
  # PUT /authors/1.xml
  def update
    @author = Author.find(params[:id])

    respond_to do |format|
      if @author.update_attributes(params[:author])
        flash[:notice] = 'Author was successfully updated.'
        format.html { redirect_to(@author) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @author.errors, :status => :unprocessable_entity }
      end
    end
  end

end
