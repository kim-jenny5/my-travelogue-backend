class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :trip
end
