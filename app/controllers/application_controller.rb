class ApplicationController < ActionController::API
    # def jwt_key
    #     ENV["SESSION_SECRET"]
    # end

    # def issue_token(user)
    #     JWT.encode({user_id: user.id}, jwt_key, "HS256")
    # end

    # before_action :authenticate

    # def authenticate
    #     if request.headers["Authorization"]
    #         begin
    #             auth_header = request.headers["Authorization"]
    #             decoded_token = JWT.decode(token, secret)
    #             payload = decoded_token.first
    #             @user = User.find(payload["user_id"])
    #         rescue => exception
    #             render json: {message: "Error: invalid token"}, status: :forbidden
    #         end
    #     else
    #         render json: {message: "No authorization header sent."}, status: :forbidden
    #     end
    # end

    # def token
    #     auth_header.split(" ")[1]
    # end

    # def secret
    #     secret = ENV["SECRET_KEY_BASE"] || Rails.application.secrets.secret_key_base
    # end

    # def create_token(payload)
    #     JWT.encode(payload, secret)
    # end
end
