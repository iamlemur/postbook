# == Schema Information
#
# Table name: draft_statuses
#
#  id         :integer          not null, primary key
#  value      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DraftStatus < ActiveRecord::Base
  attr_accessible :value
end
