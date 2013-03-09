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

class Post < ActiveRecord::Base
  attr_accessible :body, :discussion, :draft_status_id, :summary, :title
  has_many :favorites, as: :favoritable
  belongs_to :author

  validates :title, presence: true, length: {maximum: 255}
  validates :summary, presence: true
  validates :body, presence: true
  validates :draft_status_id, presence: true
  validates :discussion, presence: true
  validates :author_id, presence: true

end
