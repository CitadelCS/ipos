class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :discussion
  
  validates :user_id, presence: true
  validates :discussion_id, presence: true
  validates :body, presence: true

end
