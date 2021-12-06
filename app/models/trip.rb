class Trip < ApplicationRecord
  belongs_to :user
  has_many :destinations

  # VALIDATE START_DATE AND END_DATE
  validates :start_date, presence: {message: "There must be a start date."}
  validates :end_date, presence: {message: "There must be an end date."}

end
