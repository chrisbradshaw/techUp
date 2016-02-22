class Topic < ActiveRecord::Base
  has_many :conferences 
  has_many :users, through: :conferences

end