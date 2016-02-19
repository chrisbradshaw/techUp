class Api::V1::UsersController < ApplicationController

def index
         render(
            root: false,
            status: :ok,
            json: User.all,
            each_serializer: Api::V1::UserSerializer
        )
end

  def show
       render(
            root: false,
            status: :ok,
            json: User.find(params[:id]),
            serializer: Api::V1::UserSerializer
        )

  end

end
