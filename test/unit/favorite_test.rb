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

require 'test_helper'

class FavoriteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
