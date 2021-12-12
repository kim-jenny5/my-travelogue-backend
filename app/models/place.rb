class Place < ApplicationRecord
  belongs_to :trip

  validates :place_name, presence: {message: "Place name cannot be empty."}
end
