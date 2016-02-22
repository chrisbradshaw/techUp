class Api::V1::ConferencesController < ApplicationController

def index
         render(
            # root: false,
            # status: :ok,
            json: Conference.all,
            each_serializer: Api::V1::ConferenceSerializer
        )
end

  def show
       render(
            # root: false,
            # status: :ok,
            json: Conference.find(params[:id]),
            serializer: Api::V1::ConferenceSerializer
        )

  end

   def create
    binding.pry
      conference = Conference.create(conference_params)
          render(
              # root: false,
              json: conference,
              serializer: Api::V1::ConferenceSerializer
          )
    end

    def update

        conference = Conference.find(params[:id])
        conference.update(conference_params)
          render(
              # root: false,
              json: conference,
              serializer: Api::V1::ConferenceSerializer
          )
    end

       def destroy
          topic = Topic.find(params[:id])
          topic.destroy
          render(
            # root: false,
            # status: :ok,
            json: {message: "User Removed"},
          )
    end

    private
    def conference_params
        params.require(:conference).permit(:title, :location)
    end

end
