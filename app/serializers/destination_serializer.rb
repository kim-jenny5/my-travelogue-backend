class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :lat, :long, :trip_id, :trip_name
  # has_one :trip

  def trip_id
    object.trip.id
  end

  def trip_name
    object.trip.name
  end
end
