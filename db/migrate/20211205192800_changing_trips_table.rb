class ChangingTripsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :trips, :location, :string
    rename_column :trips, :name, :trip_name
    change_column :trips, :start_date, :date
    change_column :trips, :end_date, :date
  end
end
