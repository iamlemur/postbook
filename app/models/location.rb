# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  value      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
  attr_accessible :value
end
