# == Schema Information
#
# Table name: licenses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  valid      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class License < ActiveRecord::Base
  attr_accessible :name, :valid
end
