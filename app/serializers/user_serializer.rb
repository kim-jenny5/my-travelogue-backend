class UserSerializer < ActiveModel::Serializer
  # attributes :id, :created_at, :first_name, :last_name, :email, :password_digest
  attributes :id, :joined, :first_name, :last_name, :email, :password_digest

  def joined
    users = User.all
    users.each do |user|
      date = user.created_at.strftime("%B %e, %Y")
      return date
    end
  end
end
