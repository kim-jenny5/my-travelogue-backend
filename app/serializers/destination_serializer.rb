class DestinationSerializer < ActiveModel::Serializer
  attributes :id
  has_one :trip
end
