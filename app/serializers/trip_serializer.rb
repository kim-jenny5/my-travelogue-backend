class TripSerializer < ActiveModel::Serializer
  attributes :id, :trip_name, :start_date, :end_date, :user_id, :days_left_till
  
  has_many :places

  def user_id
    object.user.id
  end
end
