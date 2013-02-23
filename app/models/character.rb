# == Schema Information
#
# Table name: characters
#
#  id          :integer          not null, primary key
#  first_name  :string(255)
#  last_name   :string(255)
#  full_name   :string(255)
#  description :text
#  post_id     :integer
#  discussion  :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Character < ActiveRecord::Base
  attr_accessible :description, :discussion, :first_name, :full_name, :last_name, :post_id
end
