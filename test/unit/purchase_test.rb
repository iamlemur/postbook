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

require 'test_helper'

class PurchaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
