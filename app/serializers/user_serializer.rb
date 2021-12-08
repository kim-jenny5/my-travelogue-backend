class UserSerializer < ActiveModel::Serializer
  attributes :id, :joined, :first_name, :last_name, :email

  def joined
    object.created_at.strftime("%B %e, %Y")
  end
end
