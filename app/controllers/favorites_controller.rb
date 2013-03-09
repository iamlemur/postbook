class FavoritesController < ApplicationController

	before_filter :load_favoritable

  def index
  	@favoritable = Post.find(params[:post_id])
  	@favorites = @favoritable.favorites
  end

  def new
  end

 private

#  def load_favoritable
#  	resource, id = request.path.split('/')[1,2]
#  	@favoritable = resource.singularize.classify.constantize.find(id) #Photo.find(1)
#  end

  def load_favoritable
  	klass = [Post, Character, Book, Author].detect { |c| params["#{c.name.underscore}_id"] }
  	@favoritable = klass.find(params["#{klass.name.underscore}_id"])
  end

end
