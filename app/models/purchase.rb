# == Schema Information
#
# Table name: purchases
#
#  id         :integer          not null, primary key
#  license_id :integer
#  author_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Purchase < ActiveRecord::Base
  attr_accessible :author_id, :license_id
end
