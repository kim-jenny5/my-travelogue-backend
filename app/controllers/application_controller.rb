class ApplicationController < ActionController::API

    def jwt_key
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
    
    def token
        request.headers["Authorization"]
    end

    def user_id
        decoded_token.first["user_id"]
    end

    def current_user
        user ||= User.find_by(id: user_id)
    end

    def logged_in?
        !!current_user
    end

    # def cors_set_access_control_headers
    #     headers['Access-Control-Allow-Origin'] = '*'
    #     headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, PATCH, OPTIONS'
    #     headers['Access-Control-Request-Method'] = '*'
    #     headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    # end
end
