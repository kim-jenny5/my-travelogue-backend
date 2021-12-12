class Trip < ApplicationRecord
  belongs_to :user
  has_many :places

  # VALIDATE START_DATE AND END_DATE
  validates :start_date, presence: {message: "There must be a start date."}
  validates :end_date, presence: {message: "There must be an end date."}

  def days_left_till
    # (self.start_date - Date.current).to_i + 1
    count = (self.start_date - Date.current).to_i

    if count < 0
      return "N/A"
    else 
      return count
    end
  end
end
