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

    private
    def conference_params
        params.permit(:title, :location, :date)
    end

end
