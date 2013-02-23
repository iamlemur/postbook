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

class Annotation < ActiveRecord::Base
  attr_accessible :author_id, :end_word, :paragraph, :post_id, :start_word
end
