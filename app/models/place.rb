class Place < ApplicationRecord
  belongs_to :trip

  validates :first_name, presence: {message: "Place cannot be empty."}
end
