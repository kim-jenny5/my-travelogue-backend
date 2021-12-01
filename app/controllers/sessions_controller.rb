class SessionsController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def create
        user = User.find_by_email(user_login_params[:email])
        
        if user && user.authenticate(user_login_params[:password])
            token = issue_token(user)
            render json: {user: user, jwt: token}
        else
            render json: {error: "Username or password is incorrect."}
        end
    end

    def show
        if logged_in
            render json: {user: current_user}
        else
            render json: {error: "User is not logged in/could not be found."}
        end
    end

    private
    def user_login_params
        params.require(:user).permit(:email, :password)
    end
end
