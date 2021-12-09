class AddDaysLeftTillToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :days_left_till, :integer
  end
end
