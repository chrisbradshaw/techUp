class Api::V1::ConferenceSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :date
end
