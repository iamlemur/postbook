# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  paragraph  :integer
#  author_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bookmark < ActiveRecord::Base
  attr_accessible :author_id, :paragraph, :post_id
end
