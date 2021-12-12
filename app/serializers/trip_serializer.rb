class TripSerializer < ActiveModel::Serializer
  attributes :id, :trip_name, :start_date, :end_date, :user_id, :days_left_till

  def user_id
    object.user.id
  end
end
