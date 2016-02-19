class Api::V1::TopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :display_picture
  has_many :conferences

  # def include_conferences?
  #   true
  # end

  def display_picture
    # call model any helper method
    "my pictures"
  end

end
