class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :start_date, :end_date
  has_one :user
end
