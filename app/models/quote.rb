class Quote < ActiveRecord::Base
  belongs_to :user
  acts_as_votable
  validates :user_id, presence: true
  validates :quote, presence: true
  validates :source, presence: true
  default_scope -> { order(created_at: :desc) } 
  scope :of_followed_users, -> (following_users) { where user_id: following_users }  
end
