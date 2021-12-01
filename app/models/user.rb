class User < ApplicationRecord
    has_many :trips
    has_secure_password

    validates :first_name, presence: {message: "First name is missing."}
    validates :last_name, presence: {message: "Last name is missing."}
    validates :email, uniqueness: {message: "This email is already registered."}, email: true
    
end
