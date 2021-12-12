class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :place_name
  has_one :trip
end
