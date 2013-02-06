class Bookmark < ActiveRecord::Base
  attr_accessible :author_id, :paragraph, :post_id
end
