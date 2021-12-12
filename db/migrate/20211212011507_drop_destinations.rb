class DropDestinations < ActiveRecord::Migration[6.1]
  def change
    drop_table :destinations
  end
end
