class Character < ActiveRecord::Base
  attr_accessible :description, :discussion, :first_name, :full_name, :last_name, :post_id
end
