# == Schema Information
#
# Table name: favorites
#
#  id               :integer          not null, primary key
#  author_id        :integer
#  favoritable_id   :integer
#  favoritable_type :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Favorite < ActiveRecord::Base
	attr_accessible :author_id
  belongs_to :favoritable, polymorphic: true
end
