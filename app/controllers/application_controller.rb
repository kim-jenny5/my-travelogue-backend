class ApplicationController < ActionController::API
    before_action :authorized

    def jwt_key
        # ENV["SESSION_SECRET"]
        Rails.application.credentials.jwt_key
    end

    def issue_token(user)
        JWT.encode({user_id: user.id}, jwt_key, "HS256")
    end

    def decoded_token
        begin
            JWT.decode(token, jwt_key, true, { :algorithm => 'HS256' })
        rescue => exception
            [{error: "Invalid Token"}]
        end    
    end

    def authorized
        render json: {message: "Please log in."} unless logged_in?
    end

    def token
        request.headers["Authorization"]
    end

    def user_id
        decoded_token.first["user_id"]
    end

    def current_user
        @user ||= User.find_by(id: user_id)
    end

    def logged_in?
        !!current_user
    end

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
