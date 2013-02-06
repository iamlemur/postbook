class Annotation < ActiveRecord::Base
  attr_accessible :author_id, :end_word, :paragraph, :post_id, :start_word
end
