class AddPlacesToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :places, :string
  end
end
