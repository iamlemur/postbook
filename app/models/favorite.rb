class Favorite < ActiveRecord::Base
  attr_accessible :author_id
  belongs_to :favoritable, polymorphic: true
end
