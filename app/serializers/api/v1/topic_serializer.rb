class Api::V1::TopicSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :conferences


# use case: render information based on conditon such as admin (include_association?)

  # def include_name?
  #   false
  # end

  def display_picture
    # call model any helper method
    # image link generator from a helper method
    # helper modules
    "my pictures"
  end

end
