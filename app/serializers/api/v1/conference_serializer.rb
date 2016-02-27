class Api::V1::ConferenceSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :location, :date, :description
  has_one :topic
  # def attendees
  #    object.attendees.pluck(:id)
  # end
end