class Topic < ActiveRecord::Base
  has_many :conferences 
  has_many :user, through: :conferences
end