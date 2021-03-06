class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :recoverable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  validates :username, uniqueness: true

  validates_format_of :username, :with => /\A[a-z0-9]+[-a-z0-9]*[a-z0-9]\z/i, on: :create, :message => "can only contain letters and numbers."  
  has_many :quotes, dependent: :destroy

  acts_as_voter

  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
   
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  def follow(other)
    active_relationships.create(followed_id: other.id)
  end
   
  def unfollow(other)
    active_relationships.find_by(followed_id: other.id).destroy
  end
   
  def following?(other)
    following.include?(other)
  end

end


