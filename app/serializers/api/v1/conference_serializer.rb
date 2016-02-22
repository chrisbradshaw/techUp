class Api::V1::ConferenceSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :location, :date
  has_many :attendees
  has_one :creator
  # def attendees
  #    object.attendees.pluck(:id)
  # end
end