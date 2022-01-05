class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end


    def create
        user = User.new(user_params)

        if user.save
            token = issue_token(user)
            render json: {user: UserSerializer.new(user), jwt: token}
        else
            if user.errors.messages
                render json: {error: user.errors.messages}
            else
                render json: {error: "User could not be created. Please try again."}
            end
        end
    end

    def show
        user = User.find(params[:id])
        if user
            render json: user
        else
            render json: {error: "User could not be found."}
        end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
