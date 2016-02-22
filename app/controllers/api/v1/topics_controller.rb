class Api::V1::TopicsController < ApplicationController

def index
         render(
            # root: true,
            # status: :ok,
            json: Topic.all,
            each_serializer: Api::V1::TopicSerializer
        )
end

  def show
       render(
            # root: false,
            # status: :ok,
            json: Topic.find(params[:id]),
            serializer: Api::V1::TopicSerializer
        )

  end

   def create
      topic = Topic.create(topic_params)
          render(
              # root: false,
              json: topic,
              serializer: Api::V1::TopicSerializer
          )
    end

    def update

        topic = Topic.find(params[:id])
        topic.update(topic_params)
          render(
              # root: false,
              json: topic,
              serializer: Api::V1::TopicSerializer
          )
    end

    def destroy
          topic = Topic.find(params[:id])
          topic.destroy
          render(
            root: false,
            status: :ok,
            json: {message: "Topic Removed"},
          )
    end

    private
    def topic_params
        params.require(:topic).permit(:name)
    end

end
