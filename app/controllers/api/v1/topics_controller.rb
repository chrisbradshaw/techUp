class Api::V1::TopicsController < ApplicationController

def index
         render(
            root: false,
            status: :ok,
            json: Topic.all,
            each_serializer: Api::V1::TopicSerializer
        )
end

  def show
       render(
            root: false,
            status: :ok,
            json: Topic.find(params[:id]),
            serializer: Api::V1::TopicSerializer
        )

  end

end
