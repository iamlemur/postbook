# == Schema Information
#
# Table name: books
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  summary         :text
#  cover           :string(255)
#  discussion      :boolean
#  draft_status_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Book < ActiveRecord::Base
  attr_accessible :cover, :discussion, :draft_status_id, :summary, :title
end
