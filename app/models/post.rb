class Post < ActiveRecord::Base
  attr_accessible :body, :discussion, :draft_status_id, :summary, :title
end
