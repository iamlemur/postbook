# == Schema Information
#
# Table name: views
#
#  id         :integer          not null, primary key
#  author_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class View < ActiveRecord::Base
  attr_accessible :author_id
end
