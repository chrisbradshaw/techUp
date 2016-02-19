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

  def create
      user = User.create(user_params)
          render(
              root: false,
              json: user,
              serializer: Api::V1::UserSerializer
          )
    end

    def update

        user = User.find(params[:id])
        user.update(user_params)
          render(
              root: false,
              json: user,
              serializer: Api::V1::UserSerializer
          )
    end

    def destroy
          user = User.find(params[:id])
          user.destroy
          render(
            root: false,
            status: :ok,
            json: {message: "User Removed"},
          )
    end

    private
    def user_params
        params.permit(:name, :username, :email)
    end
end
