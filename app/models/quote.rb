class Quote < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :quote, presence: true
  validates :source, presence: true
  default_scope -> { order(created_at: :desc) } 
end
