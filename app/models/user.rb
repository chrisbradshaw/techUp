class User < ActiveRecord::Base
  has_many :conferences, foreign_key: 'creator_id'
  has_many :attended_conferences, through: :user_conferences
  has_many :user_conferences
  has_many :topics, through: :conferences

  validates :name, presence: true
  validates :email, presence: true
end
