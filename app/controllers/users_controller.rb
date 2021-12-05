class UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create]
    # def index
    #     users = User.all
    #     render json: users
    # end

    def create
        # byebug
        # user = User.new(user_params)
        user = User.new(params)
        byebug
        if user.save
            token = issue_token(user)
            render json: {user: UserSerializer.new(user), jwt: token}
        else
            render json: {error: "User could not be created. Please try again."}
        end
    end

    # def show
    #     # byebug
    #     # user = User.find()
    # end

    private
    # NOTE: PARAMS IS BEING WEIRD
    def user_params
        # params.require(:user).permit(:first_name, :last_name, :email, :password)
        params.permit(:first_name, :last_name, :email, :password)
    end
end
