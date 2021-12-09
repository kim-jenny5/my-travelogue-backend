class UserSerializer < ActiveModel::Serializer
  attributes :id, :joined, :first_name, :last_name, :email, :upcoming_trips, :past_trips, :next_trip
end
