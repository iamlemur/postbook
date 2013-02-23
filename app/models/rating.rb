# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  author_id  :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Rating < ActiveRecord::Base
  attr_accessible :author_id, :rating
end
