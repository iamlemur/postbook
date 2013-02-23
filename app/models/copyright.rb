# == Schema Information
#
# Table name: copyrights
#
#  id         :integer          not null, primary key
#  license_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Copyright < ActiveRecord::Base
  attr_accessible :license_id
end
