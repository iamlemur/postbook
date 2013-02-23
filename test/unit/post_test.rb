# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  summary         :text
#  body            :text
#  discussion      :boolean
#  draft_status_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
