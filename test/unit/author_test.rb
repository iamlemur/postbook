# == Schema Information
#
# Table name: authors
#
#  id          :integer          not null, primary key
#  first_name  :string(255)
#  last_name   :string(255)
#  description :string(255)
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
