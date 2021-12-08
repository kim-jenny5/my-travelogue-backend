class SessionsController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    # def new
    #     user = User.new(user_login_params)
    #     byebug
    # end

    def create
        # byebug
        # user = User.find_by_email(session_params[:email])
        user = User.find_by_email(params[:email])

        # if user && user.authenticate(session_params[:password])
        if user && user.authenticate(params[:password])
            token = issue_token(user)
            # byebug
            # render json: {user: user, jwt: token}
            render json: {user: UserSerializer.new(user), jwt: token}
            # render json: {user: user.to_json, jwt: token}
        else
            render json: {error: "Incorrect username or password."}
        end
    end

    def show
        # byebug
        if logged_in?
            # render json: {user: current_user}
            render json: current_user
            # render json: {user: user}
        else
            render json: {error: "User is not logged in/could not be found."}
        end
    end

    # private
    # def session_params
    #     params.require(:session).permit(:email, :password)
    # end
end
