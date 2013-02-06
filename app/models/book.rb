class Book < ActiveRecord::Base
  attr_accessible :cover, :discussion, :draft_status_id, :summary, :title
end
