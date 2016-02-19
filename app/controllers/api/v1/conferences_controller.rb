class Api::V1::ConferencesController < ApplicationController

def index
         render(
            root: false,
            status: :ok,
            json: Conference.all,
            each_serializer: Api::V1::ConferenceSerializer
        )
end

  def show
       render(
            root: false,
            status: :ok,
            json: Conference.find(params[:id]),
            serializer: Api::V1::ConferenceSerializer
        )

  end

end
