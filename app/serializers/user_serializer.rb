class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :first_name, :last_name, :email, :password_digest

  # def joined
    
  # end
end
