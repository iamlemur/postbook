# == Schema Information
#
# Table name: annotations
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  author_id  :integer
#  paragraph  :integer
#  start_word :integer
#  end_word   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AnnotationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
