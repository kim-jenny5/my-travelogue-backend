class TripSerializer < ActiveModel::Serializer
  attributes :id, :trip_name, :start_date, :end_date, :user_id, :days_left_till
  # attributes :id, :name, :location, :start_date, :end_date
  # has_one :user

  def user_id
    object.user.id
  end
end
