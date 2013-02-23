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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
