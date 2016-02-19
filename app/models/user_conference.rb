class UserConference < ActiveRecord::Base
  belongs_to :attendee, class_name: 'User'
  belongs_to :attended_conference, class_name: 'Conference', dependent: :destroy
end