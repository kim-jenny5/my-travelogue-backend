class ChangingTripsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :trips, :location, :string
    rename_column :trips, :name, :trip_name
  end
end
