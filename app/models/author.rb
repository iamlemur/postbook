class Author < ActiveRecord::Base
  attr_accessible :description, :first_name, :last_name, :location_id
end
