class UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create]
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.new(user_params)

        if user.save
            token = issue_token(user)
            render json: {user: user, jwt: token}
        else
            render json: {error: "User could not be created. Please try again."}
        end
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
