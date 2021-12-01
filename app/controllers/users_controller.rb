class UsersController < ApplicationController
    def create
        user = User.new(user_params)

        if user.save
            # payload = {user_id: user.id}
            # token = create_token(payload)
            render json: user
        else
            render json: {error: "User could not be created. Please try again."}
        end
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
